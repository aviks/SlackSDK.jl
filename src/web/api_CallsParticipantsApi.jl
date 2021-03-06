# This file was generated by the Julia Swagger Code Generator
# Do not modify this file directly. Modify the swagger specification instead.

struct CallsParticipantsApi <: SwaggerApi
    client::Swagger.Client
end

function _swaggerinternal_callsParticipantsAdd(_api::CallsParticipantsApi, id::String, users::String; _mediaType=nothing)
    _ctx = Swagger.Ctx(_api.client, "POST", Dict{String, Any}, "/calls.participants.add", ["slackAuth"])
    Swagger.set_param(_ctx.form, "id", id)  # type String
    Swagger.set_param(_ctx.form, "users", users)  # type String
    Swagger.set_header_accept(_ctx, ["application/json"])
    Swagger.set_header_content_type(_ctx, (_mediaType === nothing) ? ["application/x-www-form-urlencoded", "application/json"] : [_mediaType])
    return _ctx
end

"""

Registers new participants added to a Call.
Param: id::String (required)
Param: users::String (required)
Return: Dict{String, Any}
"""
function callsParticipantsAdd(_api::CallsParticipantsApi, id::String, users::String; _mediaType=nothing)
    _ctx = _swaggerinternal_callsParticipantsAdd(_api, id, users; _mediaType=_mediaType)
    Swagger.exec(_ctx)
end

function callsParticipantsAdd(_api::CallsParticipantsApi, response_stream::Channel, id::String, users::String; _mediaType=nothing)
    _ctx = _swaggerinternal_callsParticipantsAdd(_api, id, users; _mediaType=_mediaType)
    Swagger.exec(_ctx, response_stream)
end

function _swaggerinternal_callsParticipantsRemove(_api::CallsParticipantsApi, id::String, users::String; _mediaType=nothing)
    _ctx = Swagger.Ctx(_api.client, "POST", Dict{String, Any}, "/calls.participants.remove", ["slackAuth"])
    Swagger.set_param(_ctx.form, "id", id)  # type String
    Swagger.set_param(_ctx.form, "users", users)  # type String
    Swagger.set_header_accept(_ctx, ["application/json"])
    Swagger.set_header_content_type(_ctx, (_mediaType === nothing) ? ["application/x-www-form-urlencoded", "application/json"] : [_mediaType])
    return _ctx
end

"""

Registers participants removed from a Call.
Param: id::String (required)
Param: users::String (required)
Return: Dict{String, Any}
"""
function callsParticipantsRemove(_api::CallsParticipantsApi, id::String, users::String; _mediaType=nothing)
    _ctx = _swaggerinternal_callsParticipantsRemove(_api, id, users; _mediaType=_mediaType)
    Swagger.exec(_ctx)
end

function callsParticipantsRemove(_api::CallsParticipantsApi, response_stream::Channel, id::String, users::String; _mediaType=nothing)
    _ctx = _swaggerinternal_callsParticipantsRemove(_api, id, users; _mediaType=_mediaType)
    Swagger.exec(_ctx, response_stream)
end

export callsParticipantsAdd, callsParticipantsRemove
