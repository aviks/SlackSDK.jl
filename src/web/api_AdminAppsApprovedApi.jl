# This file was generated by the Julia Swagger Code Generator
# Do not modify this file directly. Modify the swagger specification instead.

struct AdminAppsApprovedApi <: SwaggerApi
    client::Swagger.Client
end

function _swaggerinternal_adminAppsApprovedList(_api::AdminAppsApprovedApi; limit=nothing, cursor=nothing, team_id=nothing, enterprise_id=nothing, _mediaType=nothing)
    _ctx = Swagger.Ctx(_api.client, "GET", Dict{String, Any}, "/admin.apps.approved.list", ["slackAuth"])
    Swagger.set_param(_ctx.query, "limit", limit)  # type Int32
    Swagger.set_param(_ctx.query, "cursor", cursor)  # type String
    Swagger.set_param(_ctx.query, "team_id", team_id)  # type String
    Swagger.set_param(_ctx.query, "enterprise_id", enterprise_id)  # type String
    Swagger.set_header_accept(_ctx, ["application/json"])
    Swagger.set_header_content_type(_ctx, (_mediaType === nothing) ? ["application/x-www-form-urlencoded"] : [_mediaType])
    return _ctx
end

"""

List approved apps for an org or workspace.
Param: limit::Int32
Param: cursor::String
Param: team_id::String
Param: enterprise_id::String
Return: Dict{String, Any}
"""
function adminAppsApprovedList(_api::AdminAppsApprovedApi; limit=nothing, cursor=nothing, team_id=nothing, enterprise_id=nothing, _mediaType=nothing)
    _ctx = _swaggerinternal_adminAppsApprovedList(_api; limit=limit, cursor=cursor, team_id=team_id, enterprise_id=enterprise_id, _mediaType=_mediaType)
    Swagger.exec(_ctx)
end

function adminAppsApprovedList(_api::AdminAppsApprovedApi, response_stream::Channel; limit=nothing, cursor=nothing, team_id=nothing, enterprise_id=nothing, _mediaType=nothing)
    _ctx = _swaggerinternal_adminAppsApprovedList(_api; limit=limit, cursor=cursor, team_id=team_id, enterprise_id=enterprise_id, _mediaType=_mediaType)
    Swagger.exec(_ctx, response_stream)
end

export adminAppsApprovedList
