# This file was generated by the Julia Swagger Code Generator
# Do not modify this file directly. Modify the swagger specification instead.

struct DialogApi <: SwaggerApi
    client::Swagger.Client
end

function _swaggerinternal_dialogOpen(_api::DialogApi, dialog::String, trigger_id::String; _mediaType=nothing)
    _ctx = Swagger.Ctx(_api.client, "GET", Dict{String, Any}, "/dialog.open", ["slackAuth"])
    Swagger.set_param(_ctx.query, "dialog", dialog)  # type String
    Swagger.set_param(_ctx.query, "trigger_id", trigger_id)  # type String
    Swagger.set_header_accept(_ctx, ["application/json"])
    Swagger.set_header_content_type(_ctx, (_mediaType === nothing) ? ["application/x-www-form-urlencoded", "application/json"] : [_mediaType])
    return _ctx
end

"""

Open a dialog with a user
Param: dialog::String (required)
Param: trigger_id::String (required)
Return: Dict{String, Any}
"""
function dialogOpen(_api::DialogApi, dialog::String, trigger_id::String; _mediaType=nothing)
    _ctx = _swaggerinternal_dialogOpen(_api, dialog, trigger_id; _mediaType=_mediaType)
    Swagger.exec(_ctx)
end

function dialogOpen(_api::DialogApi, response_stream::Channel, dialog::String, trigger_id::String; _mediaType=nothing)
    _ctx = _swaggerinternal_dialogOpen(_api, dialog, trigger_id; _mediaType=_mediaType)
    Swagger.exec(_ctx, response_stream)
end

export dialogOpen
