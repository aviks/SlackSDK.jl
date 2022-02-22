module SlackSDK
using Swagger

export WebClient

include("web/Web.jl")
using .Web

global const apiNames = Ref{Array{String}}()

# Struct encapsulating a connection to the Slack API. 
struct WebClient
    token::String
    swagger_client::Swagger.Client
    signature::String

    function WebClient(token=get(ENV, "SLACK_API_TOKEN", ""); base_url="https://www.slack.com/api/", signature="") 
        if isempty(token) 
            error("Token is empty!\nA Slack API token is required to perform API operations. Set an environment variable `SLACK_API_TOKEN` or provide directly to the `WebClient` constructor" )
        else 
            hdrs = Dict{String,String}("Authorization"=>"Bearer $token")
            return new(token, Swagger.Client(base_url, headers=hdrs), signature)
        end
    end
end

Base.show(io::IO, wc::WebClient) = print(io, "Slack Web API client, with base url '$(wc.swagger_client.root)' and token '$(wc.token[1:8])....$(wc.token[end-1:end])'")

function Base.getproperty(wc::WebClient, method::Symbol)
    if hasfield(WebClient, method)
        return getfield(wc, method)
    else 
        nm = apiNames[] 
        name_list = split(String(method), "_"; keepempty=false)
        api_object_name = join(titlecase.(name_list[1:end-1])) * "Api"
        if findfirst(x -> x==api_object_name, nm) === nothing
            throw(UndefVarError(:method))
        end
        api_object_type = getfield(SlackSDK.Web, Symbol(api_object_name))
        api_object = api_object_type(wc.swagger_client)
        method_name = name_list[1] * join(map(x->titlecase(x, strict=false), name_list[2:end]))
        try
            method_fn = getfield(SlackSDK.Web, Symbol(method_name))
            return (x...; y...) -> begin
                    method_fn(api_object, x...; y...)
                end
        catch e
            if typeof(e) == UndefVarError
                rethrow(UndefVarError(method))
            else
                rethrow()
            end
        end
    end
end

function propertynames(wc::WebClient)
        ##TODO
end

function __init__()
    nm = String.(names(SlackSDK.Web))
    nm = filter(x->endswith(x, "Api"), nm) 
    apiNames[] = copy(nm)
    nm = map(x->x[1:end-3], nm)
end

end
