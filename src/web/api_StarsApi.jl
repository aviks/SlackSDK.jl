# This file was generated by the Julia Swagger Code Generator
# Do not modify this file directly. Modify the swagger specification instead.

struct StarsApi <: SwaggerApi
    client::Swagger.Client
end

function _swaggerinternal_starsAdd(_api::StarsApi; channel=nothing, file=nothing, file_comment=nothing, timestamp=nothing, _mediaType=nothing)
    _ctx = Swagger.Ctx(_api.client, "POST", Dict{String, Any}, "/stars.add", ["slackAuth"])
    Swagger.set_param(_ctx.form, "channel", channel)  # type String
    Swagger.set_param(_ctx.form, "file", file)  # type String
    Swagger.set_param(_ctx.form, "file_comment", file_comment)  # type String
    Swagger.set_param(_ctx.form, "timestamp", timestamp)  # type String
    Swagger.set_header_accept(_ctx, ["application/json"])
    Swagger.set_header_content_type(_ctx, (_mediaType === nothing) ? ["application/x-www-form-urlencoded", "application/json"] : [_mediaType])
    return _ctx
end

"""

Adds a star to an item.
Param: channel::String
Param: file::String
Param: file_comment::String
Param: timestamp::String
Return: Dict{String, Any}
"""
function starsAdd(_api::StarsApi; channel=nothing, file=nothing, file_comment=nothing, timestamp=nothing, _mediaType=nothing)
    _ctx = _swaggerinternal_starsAdd(_api; channel=channel, file=file, file_comment=file_comment, timestamp=timestamp, _mediaType=_mediaType)
    Swagger.exec(_ctx)
end

function starsAdd(_api::StarsApi, response_stream::Channel; channel=nothing, file=nothing, file_comment=nothing, timestamp=nothing, _mediaType=nothing)
    _ctx = _swaggerinternal_starsAdd(_api; channel=channel, file=file, file_comment=file_comment, timestamp=timestamp, _mediaType=_mediaType)
    Swagger.exec(_ctx, response_stream)
end

function _swaggerinternal_starsList(_api::StarsApi; count=nothing, page=nothing, cursor=nothing, limit=nothing, _mediaType=nothing)
    _ctx = Swagger.Ctx(_api.client, "GET", Dict{String, Any}, "/stars.list", ["slackAuth"])
    Swagger.set_param(_ctx.query, "count", count)  # type String
    Swagger.set_param(_ctx.query, "page", page)  # type String
    Swagger.set_param(_ctx.query, "cursor", cursor)  # type String
    Swagger.set_param(_ctx.query, "limit", limit)  # type Int32
    Swagger.set_header_accept(_ctx, ["application/json"])
    Swagger.set_header_content_type(_ctx, (_mediaType === nothing) ? ["application/x-www-form-urlencoded"] : [_mediaType])
    return _ctx
end

"""

Lists stars for a user.
Param: count::String
Param: page::String
Param: cursor::String
Param: limit::Int32
Return: Dict{String, Any}
"""
function starsList(_api::StarsApi; count=nothing, page=nothing, cursor=nothing, limit=nothing, _mediaType=nothing)
    _ctx = _swaggerinternal_starsList(_api; count=count, page=page, cursor=cursor, limit=limit, _mediaType=_mediaType)
    Swagger.exec(_ctx)
end

function starsList(_api::StarsApi, response_stream::Channel; count=nothing, page=nothing, cursor=nothing, limit=nothing, _mediaType=nothing)
    _ctx = _swaggerinternal_starsList(_api; count=count, page=page, cursor=cursor, limit=limit, _mediaType=_mediaType)
    Swagger.exec(_ctx, response_stream)
end

function _swaggerinternal_starsRemove(_api::StarsApi; channel=nothing, file=nothing, file_comment=nothing, timestamp=nothing, _mediaType=nothing)
    _ctx = Swagger.Ctx(_api.client, "POST", Dict{String, Any}, "/stars.remove", ["slackAuth"])
    Swagger.set_param(_ctx.form, "channel", channel)  # type String
    Swagger.set_param(_ctx.form, "file", file)  # type String
    Swagger.set_param(_ctx.form, "file_comment", file_comment)  # type String
    Swagger.set_param(_ctx.form, "timestamp", timestamp)  # type String
    Swagger.set_header_accept(_ctx, ["application/json"])
    Swagger.set_header_content_type(_ctx, (_mediaType === nothing) ? ["application/x-www-form-urlencoded", "application/json"] : [_mediaType])
    return _ctx
end

"""

Removes a star from an item.
Param: channel::String
Param: file::String
Param: file_comment::String
Param: timestamp::String
Return: Dict{String, Any}
"""
function starsRemove(_api::StarsApi; channel=nothing, file=nothing, file_comment=nothing, timestamp=nothing, _mediaType=nothing)
    _ctx = _swaggerinternal_starsRemove(_api; channel=channel, file=file, file_comment=file_comment, timestamp=timestamp, _mediaType=_mediaType)
    Swagger.exec(_ctx)
end

function starsRemove(_api::StarsApi, response_stream::Channel; channel=nothing, file=nothing, file_comment=nothing, timestamp=nothing, _mediaType=nothing)
    _ctx = _swaggerinternal_starsRemove(_api; channel=channel, file=file, file_comment=file_comment, timestamp=timestamp, _mediaType=_mediaType)
    Swagger.exec(_ctx, response_stream)
end

export starsAdd, starsList, starsRemove
