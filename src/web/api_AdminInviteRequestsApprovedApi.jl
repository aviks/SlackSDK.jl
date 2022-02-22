# This file was generated by the Julia Swagger Code Generator
# Do not modify this file directly. Modify the swagger specification instead.

struct AdminInviteRequestsApprovedApi <: SwaggerApi
    client::Swagger.Client
end

function _swaggerinternal_adminInviteRequestsApprovedList(_api::AdminInviteRequestsApprovedApi; team_id=nothing, cursor=nothing, limit=nothing, _mediaType=nothing)
    _ctx = Swagger.Ctx(_api.client, "GET", Dict{String, Any}, "/admin.inviteRequests.approved.list", ["slackAuth"])
    Swagger.set_param(_ctx.query, "team_id", team_id)  # type String
    Swagger.set_param(_ctx.query, "cursor", cursor)  # type String
    Swagger.set_param(_ctx.query, "limit", limit)  # type Int32
    Swagger.set_header_accept(_ctx, ["application/json"])
    Swagger.set_header_content_type(_ctx, (_mediaType === nothing) ? ["application/x-www-form-urlencoded", "application/json"] : [_mediaType])
    return _ctx
end

"""

List all approved workspace invite requests.
Param: team_id::String
Param: cursor::String
Param: limit::Int32
Return: Dict{String, Any}
"""
function adminInviteRequestsApprovedList(_api::AdminInviteRequestsApprovedApi; team_id=nothing, cursor=nothing, limit=nothing, _mediaType=nothing)
    _ctx = _swaggerinternal_adminInviteRequestsApprovedList(_api; team_id=team_id, cursor=cursor, limit=limit, _mediaType=_mediaType)
    Swagger.exec(_ctx)
end

function adminInviteRequestsApprovedList(_api::AdminInviteRequestsApprovedApi, response_stream::Channel; team_id=nothing, cursor=nothing, limit=nothing, _mediaType=nothing)
    _ctx = _swaggerinternal_adminInviteRequestsApprovedList(_api; team_id=team_id, cursor=cursor, limit=limit, _mediaType=_mediaType)
    Swagger.exec(_ctx, response_stream)
end

export adminInviteRequestsApprovedList
