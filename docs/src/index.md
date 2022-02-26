```@meta
CurrentModule = SlackSDK
```

# SlackSDK

This package provides a fairly complete implemenation of the [Slack Web API](https://api.slack.com/web).

## Usage
```julia
using SlackSDK
```

Access to the Slack api is provided via the `WebClient` struct. Construct it by passing a [token](https://api.slack.com/authentication/token-types) directly. Alternatively, set the token as an environment variable called `SLACK_API_TOKEN` and then use the no-arg constructor. You will most likely want to use a *bot* token here. 
```julia
julia> client = SlackSDK.WebClient(token)
Slack Web API client, with base url 'https://www.slack.com/api/' and token 'xoxb-206....Yg'
```

The list of api methods are documented by slack at [https://api.slack.com/methods](https://api.slack.com/methods). It will be helpful to familiarise yourself with the structure of the api before using this package. 

The Slack api methods are generally of the form `group[.subgroup].methodname`. Replace the dots with underscores, and use that name to call the member function on the `WebClient` object you created above. For example, the `chat.postMessage(...)` API method is called using `client.chat_postMessage`, while the `admin.analytics.getFile` method is called using `client.admin_analytics_getFile(...)`. Required arguments should be passed as positional arguments to this function, and optional arguments are passed as keyword arguments. 

> There are some [discrepancies](https://github.com/slackapi/slack-api-specs/issues/70) between the online documentation and the api specs about which arguments are required. In case of doubt, view the [method list](./methods.html). Search the method name to find its details. Required parameters will be explicitly marked as such.  

The list of available methods can be seen via tab completion of properties of the `client` object

```
julia> client.admin_apps<tab><tab>
admin_apps_approve         admin_apps_approved_list    admin_apps_requests_list    admin_apps_restrict         admin_apps_restricted_list
```

## Examples

```julia
julia> client.auth_test()
Dict{String, Any} with 8 entries:
  "team_id"               => "T0LLxxxxxx"
  "ok"                    => true
  "team"                  => "Jxxxxxxxxxxxx"
  "bot_id"                => "B033xxxxxxx"
  "user_id"               => "U033xxxxxxx"
  "url"                   => "https://jxxxxxxxxxxx.slack.com/"
  "user"                  => "apitestxxx"
  "is_enterprise_install" => false
```

```julia
julia> client.bots_info(bot="B033xxxxxxx")
Dict{String, Any} with 2 entries:
  "ok"  => true
  "bot" => Dict{String, Any}("name"=>"APITestxxx", "id"=>"B033xxxxxxx", "deleted"=>false, "user_id"=>"U033xxxxxx", "app_id"=>"A033xxxxxx", "updated"=>1645307913, "icons"=>Dict{String, Any}("image_36"=>"https://a.slack-edge…

```

```julia
julia> client.chat_postMessage("C033xxxxxx"; text="Hello from your bot")
Dict{String, Any} with 4 entries:
  "channel" => "C033xxxxxx"
  "ok"      => true
  "message" => Dict{String, Any}("bot_profile"=>Dict{String, Any}("name"=>"APITesting", "team_id"=>"T0LLxxxxx", "id"=>"B033Vxxxxxx", "deleted"=>false, "app_id"=>"A033xxxxxx", "icons"=>Dict{String, Any}("image_36"=>"https://…
  "ts"      => "1645461486.214089"
```

```julia
julia> client.chat_delete(channel="C033xxxxxx", ts="1645461486.214089")
Dict{String, Any} with 3 entries:
  "channel" => "C033xxxxxx"
  "ok"      => true
  "ts"      => "1645461486.214089"
```

## Error Handling

The return value from any method call is a `Dict`. See the value of the `ok` key to check if the call succeeded. It should be `true` for calls that succeed, and the rest of the `Dict` will contain other return values from the api call. If `ok` is `false`, there will be an `error` key with details of the problem. Like so: 

```julia
julia> client.admin_apps_approved_list()
Dict{String, Any} with 2 entries:
  "error" => "not_allowed_token_type"
  "ok"    => false
```



