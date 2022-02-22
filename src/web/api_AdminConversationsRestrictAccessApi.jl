# This file was generated by the Julia Swagger Code Generator
# Do not modify this file directly. Modify the swagger specification instead.

struct AdminConversationsRestrictAccessApi <: SwaggerApi
    client::Swagger.Client
end

function _swaggerinternal_adminConversationsRestrictAccessAddGroup(_api::AdminConversationsRestrictAccessApi, group_id::String, channel_id::String; team_id=nothing, _mediaType=nothing)
    _ctx = Swagger.Ctx(_api.client, "POST", Dict{String, Any}, "/admin.conversations.restrictAccess.addGroup", ["slackAuth"])
    Swagger.set_param(_ctx.form, "team_id", team_id)  # type String
    Swagger.set_param(_ctx.form, "group_id", group_id)  # type String
    Swagger.set_param(_ctx.form, "channel_id", channel_id)  # type String
    Swagger.set_header_accept(_ctx, ["application/json"])
    Swagger.set_header_content_type(_ctx, (_mediaType === nothing) ? ["application/x-www-form-urlencoded"] : [_mediaType])
    return _ctx
end

"""

Add an allowlist of IDP groups for accessing a channel
Param: group_id::String (required)
Param: channel_id::String (required)
Param: team_id::String
Return: Dict{String, Any}
"""
function adminConversationsRestrictAccessAddGroup(_api::AdminConversationsRestrictAccessApi, group_id::String, channel_id::String; team_id=nothing, _mediaType=nothing)
    _ctx = _swaggerinternal_adminConversationsRestrictAccessAddGroup(_api, group_id, channel_id; team_id=team_id, _mediaType=_mediaType)
    Swagger.exec(_ctx)
end

function adminConversationsRestrictAccessAddGroup(_api::AdminConversationsRestrictAccessApi, response_stream::Channel, group_id::String, channel_id::String; team_id=nothing, _mediaType=nothing)
    _ctx = _swaggerinternal_adminConversationsRestrictAccessAddGroup(_api, group_id, channel_id; team_id=team_id, _mediaType=_mediaType)
    Swagger.exec(_ctx, response_stream)
end

function _swaggerinternal_adminConversationsRestrictAccessListGroups(_api::AdminConversationsRestrictAccessApi, channel_id::String; team_id=nothing, _mediaType=nothing)
    _ctx = Swagger.Ctx(_api.client, "GET", Dict{String, Any}, "/admin.conversations.restrictAccess.listGroups", ["slackAuth"])
    Swagger.set_param(_ctx.query, "channel_id", channel_id)  # type String
    Swagger.set_param(_ctx.query, "team_id", team_id)  # type String
    Swagger.set_header_accept(_ctx, ["application/json"])
    Swagger.set_header_content_type(_ctx, (_mediaType === nothing) ? ["application/x-www-form-urlencoded"] : [_mediaType])
    return _ctx
end

"""

List all IDP Groups linked to a channel
Param: channel_id::String (required)
Param: team_id::String
Return: Dict{String, Any}
"""
function adminConversationsRestrictAccessListGroups(_api::AdminConversationsRestrictAccessApi, channel_id::String; team_id=nothing, _mediaType=nothing)
    _ctx = _swaggerinternal_adminConversationsRestrictAccessListGroups(_api, channel_id; team_id=team_id, _mediaType=_mediaType)
    Swagger.exec(_ctx)
end

function adminConversationsRestrictAccessListGroups(_api::AdminConversationsRestrictAccessApi, response_stream::Channel, channel_id::String; team_id=nothing, _mediaType=nothing)
    _ctx = _swaggerinternal_adminConversationsRestrictAccessListGroups(_api, channel_id; team_id=team_id, _mediaType=_mediaType)
    Swagger.exec(_ctx, response_stream)
end

function _swaggerinternal_adminConversationsRestrictAccessRemoveGroup(_api::AdminConversationsRestrictAccessApi, team_id::String, group_id::String, channel_id::String; _mediaType=nothing)
    _ctx = Swagger.Ctx(_api.client, "POST", Dict{String, Any}, "/admin.conversations.restrictAccess.removeGroup", ["slackAuth"])
    Swagger.set_param(_ctx.form, "team_id", team_id)  # type String
    Swagger.set_param(_ctx.form, "group_id", group_id)  # type String
    Swagger.set_param(_ctx.form, "channel_id", channel_id)  # type String
    Swagger.set_header_accept(_ctx, ["application/json"])
    Swagger.set_header_content_type(_ctx, (_mediaType === nothing) ? ["application/x-www-form-urlencoded"] : [_mediaType])
    return _ctx
end

"""

Remove a linked IDP group linked from a private channel
Param: team_id::String (required)
Param: group_id::String (required)
Param: channel_id::String (required)
Return: Dict{String, Any}
"""
function adminConversationsRestrictAccessRemoveGroup(_api::AdminConversationsRestrictAccessApi, team_id::String, group_id::String, channel_id::String; _mediaType=nothing)
    _ctx = _swaggerinternal_adminConversationsRestrictAccessRemoveGroup(_api, team_id, group_id, channel_id; _mediaType=_mediaType)
    Swagger.exec(_ctx)
end

function adminConversationsRestrictAccessRemoveGroup(_api::AdminConversationsRestrictAccessApi, response_stream::Channel, team_id::String, group_id::String, channel_id::String; _mediaType=nothing)
    _ctx = _swaggerinternal_adminConversationsRestrictAccessRemoveGroup(_api, team_id, group_id, channel_id; _mediaType=_mediaType)
    Swagger.exec(_ctx, response_stream)
end

export adminConversationsRestrictAccessAddGroup, adminConversationsRestrictAccessListGroups, adminConversationsRestrictAccessRemoveGroup