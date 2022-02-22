# This file was generated by the Julia Swagger Code Generator
# Do not modify this file directly. Modify the swagger specification instead.

struct AppsEventAuthorizationsApi <: SwaggerApi
    client::Swagger.Client
end

function _swaggerinternal_appsEventAuthorizationsList(_api::AppsEventAuthorizationsApi, event_context::String; cursor=nothing, limit=nothing, _mediaType=nothing)
    _ctx = Swagger.Ctx(_api.client, "GET", Dict{String, Any}, "/apps.event.authorizations.list", ["slackAuth"])
    Swagger.set_param(_ctx.query, "event_context", event_context)  # type String
    Swagger.set_param(_ctx.query, "cursor", cursor)  # type String
    Swagger.set_param(_ctx.query, "limit", limit)  # type Int32
    Swagger.set_header_accept(_ctx, ["application/json"])
    Swagger.set_header_content_type(_ctx, (_mediaType === nothing) ? ["application/x-www-form-urlencoded", "application/json"] : [_mediaType])
    return _ctx
end

"""

Get a list of authorizations for the given event context. Each authorization represents an app installation that the event is visible to.
Param: event_context::String (required)
Param: cursor::String
Param: limit::Int32
Return: Dict{String, Any}
"""
function appsEventAuthorizationsList(_api::AppsEventAuthorizationsApi, event_context::String; cursor=nothing, limit=nothing, _mediaType=nothing)
    _ctx = _swaggerinternal_appsEventAuthorizationsList(_api, event_context; cursor=cursor, limit=limit, _mediaType=_mediaType)
    Swagger.exec(_ctx)
end

function appsEventAuthorizationsList(_api::AppsEventAuthorizationsApi, response_stream::Channel, event_context::String; cursor=nothing, limit=nothing, _mediaType=nothing)
    _ctx = _swaggerinternal_appsEventAuthorizationsList(_api, event_context; cursor=cursor, limit=limit, _mediaType=_mediaType)
    Swagger.exec(_ctx, response_stream)
end

export appsEventAuthorizationsList