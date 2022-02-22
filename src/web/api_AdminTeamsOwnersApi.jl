# This file was generated by the Julia Swagger Code Generator
# Do not modify this file directly. Modify the swagger specification instead.

struct AdminTeamsOwnersApi <: SwaggerApi
    client::Swagger.Client
end

function _swaggerinternal_adminTeamsOwnersList(_api::AdminTeamsOwnersApi, team_id::String; limit=nothing, cursor=nothing, _mediaType=nothing)
    _ctx = Swagger.Ctx(_api.client, "GET", Dict{String, Any}, "/admin.teams.owners.list", ["slackAuth"])
    Swagger.set_param(_ctx.query, "team_id", team_id)  # type String
    Swagger.set_param(_ctx.query, "limit", limit)  # type Int32
    Swagger.set_param(_ctx.query, "cursor", cursor)  # type String
    Swagger.set_header_accept(_ctx, ["application/json"])
    Swagger.set_header_content_type(_ctx, (_mediaType === nothing) ? ["application/x-www-form-urlencoded"] : [_mediaType])
    return _ctx
end

"""

List all of the owners on a given workspace.
Param: team_id::String (required)
Param: limit::Int32
Param: cursor::String
Return: Dict{String, Any}
"""
function adminTeamsOwnersList(_api::AdminTeamsOwnersApi, team_id::String; limit=nothing, cursor=nothing, _mediaType=nothing)
    _ctx = _swaggerinternal_adminTeamsOwnersList(_api, team_id; limit=limit, cursor=cursor, _mediaType=_mediaType)
    Swagger.exec(_ctx)
end

function adminTeamsOwnersList(_api::AdminTeamsOwnersApi, response_stream::Channel, team_id::String; limit=nothing, cursor=nothing, _mediaType=nothing)
    _ctx = _swaggerinternal_adminTeamsOwnersList(_api, team_id; limit=limit, cursor=cursor, _mediaType=_mediaType)
    Swagger.exec(_ctx, response_stream)
end

export adminTeamsOwnersList
