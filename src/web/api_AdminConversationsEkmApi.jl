# This file was generated by the Julia Swagger Code Generator
# Do not modify this file directly. Modify the swagger specification instead.

struct AdminConversationsEkmApi <: SwaggerApi
    client::Swagger.Client
end

function _swaggerinternal_adminConversationsEkmListOriginalConnectedChannelInfo(_api::AdminConversationsEkmApi; channel_ids=nothing, team_ids=nothing, limit=nothing, cursor=nothing, _mediaType=nothing)
    _ctx = Swagger.Ctx(_api.client, "GET", Dict{String, Any}, "/admin.conversations.ekm.listOriginalConnectedChannelInfo", ["slackAuth"])
    Swagger.set_param(_ctx.query, "channel_ids", channel_ids)  # type String
    Swagger.set_param(_ctx.query, "team_ids", team_ids)  # type String
    Swagger.set_param(_ctx.query, "limit", limit)  # type Int32
    Swagger.set_param(_ctx.query, "cursor", cursor)  # type String
    Swagger.set_header_accept(_ctx, ["application/json"])
    Swagger.set_header_content_type(_ctx, (_mediaType === nothing) ? ["application/x-www-form-urlencoded"] : [_mediaType])
    return _ctx
end

"""

List all disconnected channels—i.e., channels that were once connected to other workspaces and then disconnected—and the corresponding original channel IDs for key revocation with EKM.
Param: channel_ids::String
Param: team_ids::String
Param: limit::Int32
Param: cursor::String
Return: Dict{String, Any}
"""
function adminConversationsEkmListOriginalConnectedChannelInfo(_api::AdminConversationsEkmApi; channel_ids=nothing, team_ids=nothing, limit=nothing, cursor=nothing, _mediaType=nothing)
    _ctx = _swaggerinternal_adminConversationsEkmListOriginalConnectedChannelInfo(_api; channel_ids=channel_ids, team_ids=team_ids, limit=limit, cursor=cursor, _mediaType=_mediaType)
    Swagger.exec(_ctx)
end

function adminConversationsEkmListOriginalConnectedChannelInfo(_api::AdminConversationsEkmApi, response_stream::Channel; channel_ids=nothing, team_ids=nothing, limit=nothing, cursor=nothing, _mediaType=nothing)
    _ctx = _swaggerinternal_adminConversationsEkmListOriginalConnectedChannelInfo(_api; channel_ids=channel_ids, team_ids=team_ids, limit=limit, cursor=cursor, _mediaType=_mediaType)
    Swagger.exec(_ctx, response_stream)
end

export adminConversationsEkmListOriginalConnectedChannelInfo
