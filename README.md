# SlackSDK

[![Build Status](https://github.com/aviks/SlackSDK.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/aviks/SlackSDK.jl/actions/workflows/CI.yml?query=branch%3Amain)

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

The list of api methods are documented by slack at https://api.slack.com/methods. It will be helpful to familiarise yourself with the structure of the api before using this package. 

The Slack api methods are generally of the form `group[.subgroup].methodname`. Replace the dots with underscores, and use that name to call the member function on the `WebClient` object you created above. For example, the `chat.postMessage(...)` API method is called using `client.chat_postMessage`, while the `admin.analytics.getFile` method is called using `client.admin_analytics_getFile(...)`. Required arguments should be passed as positional arguments to this function, and optional arguments are passed as keyword arguments. 

> There are some [discrepancies](https://github.com/slackapi/slack-api-specs/issues/70) between the online documentation and the api specs about which arguments are required. In case of doubt, please refer to spec file stored in this repo. Search the method name to find its definiton in the file. 

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
julia> client.bots_info(bot="B033VH3FX34")
Dict{String, Any} with 2 entries:
  "ok"  => true
  "bot" => Dict{String, Any}("name"=>"APITestxxx", "id"=>"B033xxxxxx", "deleted"=>false, "user_id"=>"U033xxxxxx", "app_id"=>"A033xxxxxx", "updated"=>1645307913, "icons"=>Dict{String, Any}("image_36"=>"https://a.slack-edge…

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

## Code generation

The files in the `web/` subdirectory of this package were generated from the [Slack API Specs](https://github.com/slackapi/slack-api-specs). The commit `bc08db49625630e3585bf2f1322128ea04f2a7f3` was used, which last had substantive changes in October 2020. The code generation used the `Swagger.jl@v0.3.5` julia package, invoked via `/home/me/.julia/packages/Swagger/LiWeJ/plugin/generate.sh -i specs/slack_web_openapi_v2_without_examples.json -o src/web -c specs/config.json`.

The token parameter is present in all methods in this schema, but is not meant to be a query parameter. It is meant to be injected into the headers as a *Bearer* token, and Swagger.jl currently does not have automatic support for this mechanism. 

The following regex was used to remove all `token` parameters from the API calls.  `/\{\n.*\n.*\n\s*"name": "token",\n.*\n(.*\n)?\s*\},?\n\s*//` . One manual intervention was required for the `/reactions.add` method. 

The header with token is then injected by a higher level wrapper in this package. 

## Caveats

* Only the Slack [Web API](https://api.slack.com/web) is implemented. The [Event API](https://api.slack.com/apis/connections/events-api) is not yet implemented. 
* Not all the methods are tested. Please open issues if you find problems calling any method. 
* There are no tests. Maybe a test workspace could be created for use by this package, and automated tests run against that? Contributions on these lines are most welcome. 

## Other Packages

There are a [few other packages](https://juliahub.com/ui/Search?q=Slack&type=packages) in the Julia ecosystem that interacts with the Slack API: [Slack](https://juliahub.com/ui/Packages/Slack/vfmTp/0.1.2), [Slacker](https://juliahub.com/ui/Packages/Slacker/zliBU/1.0.0) and [SlackThreads](https://juliahub.com/ui/Packages/SlackThreads/irQKT/0.1.4) Most of them seem limited to a small set of functionality, implementing only a couple of API methods. This package on the other hand is mostly auto-generated from the Slack API specs, and thus covers almost the entirety of the Slack API surface. 

## Acknowledgement

Various trademarks held by their respective owners. This project is not affiliated with or endorsed by Slack Technologies or Salesfore. 