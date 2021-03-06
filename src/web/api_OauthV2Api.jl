# This file was generated by the Julia Swagger Code Generator
# Do not modify this file directly. Modify the swagger specification instead.

struct OauthV2Api <: SwaggerApi
    client::Swagger.Client
end

function _swaggerinternal_oauthV2Access(_api::OauthV2Api, code::String; client_id=nothing, client_secret=nothing, redirect_uri=nothing, _mediaType=nothing)
    _ctx = Swagger.Ctx(_api.client, "GET", Dict{String, Any}, "/oauth.v2.access", ["slackAuth"])
    Swagger.set_param(_ctx.query, "client_id", client_id)  # type String
    Swagger.set_param(_ctx.query, "client_secret", client_secret)  # type String
    Swagger.set_param(_ctx.query, "code", code)  # type String
    Swagger.set_param(_ctx.query, "redirect_uri", redirect_uri)  # type String
    Swagger.set_header_accept(_ctx, ["application/json"])
    Swagger.set_header_content_type(_ctx, (_mediaType === nothing) ? ["application/x-www-form-urlencoded"] : [_mediaType])
    return _ctx
end

"""

Exchanges a temporary OAuth verifier code for an access token.
Param: code::String (required)
Param: client_id::String
Param: client_secret::String
Param: redirect_uri::String
Return: Dict{String, Any}
"""
function oauthV2Access(_api::OauthV2Api, code::String; client_id=nothing, client_secret=nothing, redirect_uri=nothing, _mediaType=nothing)
    _ctx = _swaggerinternal_oauthV2Access(_api, code; client_id=client_id, client_secret=client_secret, redirect_uri=redirect_uri, _mediaType=_mediaType)
    Swagger.exec(_ctx)
end

function oauthV2Access(_api::OauthV2Api, response_stream::Channel, code::String; client_id=nothing, client_secret=nothing, redirect_uri=nothing, _mediaType=nothing)
    _ctx = _swaggerinternal_oauthV2Access(_api, code; client_id=client_id, client_secret=client_secret, redirect_uri=redirect_uri, _mediaType=_mediaType)
    Swagger.exec(_ctx, response_stream)
end

export oauthV2Access
