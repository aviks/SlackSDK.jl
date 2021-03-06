# This file was generated by the Julia Swagger Code Generator
# Do not modify this file directly. Modify the swagger specification instead.

struct SearchApi <: SwaggerApi
    client::Swagger.Client
end

function _swaggerinternal_searchMessages(_api::SearchApi, query::String; count=nothing, highlight=nothing, page=nothing, sort=nothing, sort_dir=nothing, _mediaType=nothing)
    _ctx = Swagger.Ctx(_api.client, "GET", Dict{String, Any}, "/search.messages", ["slackAuth"])
    Swagger.set_param(_ctx.query, "count", count)  # type Int32
    Swagger.set_param(_ctx.query, "highlight", highlight)  # type Bool
    Swagger.set_param(_ctx.query, "page", page)  # type Int32
    Swagger.set_param(_ctx.query, "query", query)  # type String
    Swagger.set_param(_ctx.query, "sort", sort)  # type String
    Swagger.set_param(_ctx.query, "sort_dir", sort_dir)  # type String
    Swagger.set_header_accept(_ctx, ["application/json"])
    Swagger.set_header_content_type(_ctx, (_mediaType === nothing) ? ["application/x-www-form-urlencoded"] : [_mediaType])
    return _ctx
end

"""

Searches for messages matching a query.
Param: query::String (required)
Param: count::Int32
Param: highlight::Bool
Param: page::Int32
Param: sort::String
Param: sort_dir::String
Return: Dict{String, Any}
"""
function searchMessages(_api::SearchApi, query::String; count=nothing, highlight=nothing, page=nothing, sort=nothing, sort_dir=nothing, _mediaType=nothing)
    _ctx = _swaggerinternal_searchMessages(_api, query; count=count, highlight=highlight, page=page, sort=sort, sort_dir=sort_dir, _mediaType=_mediaType)
    Swagger.exec(_ctx)
end

function searchMessages(_api::SearchApi, response_stream::Channel, query::String; count=nothing, highlight=nothing, page=nothing, sort=nothing, sort_dir=nothing, _mediaType=nothing)
    _ctx = _swaggerinternal_searchMessages(_api, query; count=count, highlight=highlight, page=page, sort=sort, sort_dir=sort_dir, _mediaType=_mediaType)
    Swagger.exec(_ctx, response_stream)
end

export searchMessages
