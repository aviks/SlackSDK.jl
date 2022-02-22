# This file was generated by the Julia Swagger Code Generator
# Do not modify this file directly. Modify the swagger specification instead.

struct AdminConversationsApi <: SwaggerApi
    client::Swagger.Client
end

function _swaggerinternal_adminConversationsArchive(_api::AdminConversationsApi, channel_id::String; _mediaType=nothing)
    _ctx = Swagger.Ctx(_api.client, "POST", Dict{String, Any}, "/admin.conversations.archive", ["slackAuth"])
    Swagger.set_param(_ctx.form, "channel_id", channel_id)  # type String
    Swagger.set_header_accept(_ctx, ["application/json"])
    Swagger.set_header_content_type(_ctx, (_mediaType === nothing) ? ["application/x-www-form-urlencoded", "application/json"] : [_mediaType])
    return _ctx
end

"""

Archive a public or private channel.
Param: channel_id::String (required)
Return: Dict{String, Any}
"""
function adminConversationsArchive(_api::AdminConversationsApi, channel_id::String; _mediaType=nothing)
    _ctx = _swaggerinternal_adminConversationsArchive(_api, channel_id; _mediaType=_mediaType)
    Swagger.exec(_ctx)
end

function adminConversationsArchive(_api::AdminConversationsApi, response_stream::Channel, channel_id::String; _mediaType=nothing)
    _ctx = _swaggerinternal_adminConversationsArchive(_api, channel_id; _mediaType=_mediaType)
    Swagger.exec(_ctx, response_stream)
end

function _swaggerinternal_adminConversationsConvertToPrivate(_api::AdminConversationsApi, channel_id::String; _mediaType=nothing)
    _ctx = Swagger.Ctx(_api.client, "POST", Dict{String, Any}, "/admin.conversations.convertToPrivate", ["slackAuth"])
    Swagger.set_param(_ctx.form, "channel_id", channel_id)  # type String
    Swagger.set_header_accept(_ctx, ["application/json"])
    Swagger.set_header_content_type(_ctx, (_mediaType === nothing) ? ["application/x-www-form-urlencoded", "application/json"] : [_mediaType])
    return _ctx
end

"""

Convert a public channel to a private channel.
Param: channel_id::String (required)
Return: Dict{String, Any}
"""
function adminConversationsConvertToPrivate(_api::AdminConversationsApi, channel_id::String; _mediaType=nothing)
    _ctx = _swaggerinternal_adminConversationsConvertToPrivate(_api, channel_id; _mediaType=_mediaType)
    Swagger.exec(_ctx)
end

function adminConversationsConvertToPrivate(_api::AdminConversationsApi, response_stream::Channel, channel_id::String; _mediaType=nothing)
    _ctx = _swaggerinternal_adminConversationsConvertToPrivate(_api, channel_id; _mediaType=_mediaType)
    Swagger.exec(_ctx, response_stream)
end

function _swaggerinternal_adminConversationsCreate(_api::AdminConversationsApi, name::String, is_private::Bool; description=nothing, org_wide=nothing, team_id=nothing, _mediaType=nothing)
    _ctx = Swagger.Ctx(_api.client, "POST", Dict{String, Any}, "/admin.conversations.create", ["slackAuth"])
    Swagger.set_param(_ctx.form, "name", name)  # type String
    Swagger.set_param(_ctx.form, "description", description)  # type String
    Swagger.set_param(_ctx.form, "is_private", is_private)  # type Bool
    Swagger.set_param(_ctx.form, "org_wide", org_wide)  # type Bool
    Swagger.set_param(_ctx.form, "team_id", team_id)  # type String
    Swagger.set_header_accept(_ctx, ["application/json"])
    Swagger.set_header_content_type(_ctx, (_mediaType === nothing) ? ["application/x-www-form-urlencoded", "application/json"] : [_mediaType])
    return _ctx
end

"""

Create a public or private channel-based conversation.
Param: name::String (required)
Param: is_private::Bool (required)
Param: description::String
Param: org_wide::Bool
Param: team_id::String
Return: Dict{String, Any}
"""
function adminConversationsCreate(_api::AdminConversationsApi, name::String, is_private::Bool; description=nothing, org_wide=nothing, team_id=nothing, _mediaType=nothing)
    _ctx = _swaggerinternal_adminConversationsCreate(_api, name, is_private; description=description, org_wide=org_wide, team_id=team_id, _mediaType=_mediaType)
    Swagger.exec(_ctx)
end

function adminConversationsCreate(_api::AdminConversationsApi, response_stream::Channel, name::String, is_private::Bool; description=nothing, org_wide=nothing, team_id=nothing, _mediaType=nothing)
    _ctx = _swaggerinternal_adminConversationsCreate(_api, name, is_private; description=description, org_wide=org_wide, team_id=team_id, _mediaType=_mediaType)
    Swagger.exec(_ctx, response_stream)
end

function _swaggerinternal_adminConversationsDelete(_api::AdminConversationsApi, channel_id::String; _mediaType=nothing)
    _ctx = Swagger.Ctx(_api.client, "POST", Dict{String, Any}, "/admin.conversations.delete", ["slackAuth"])
    Swagger.set_param(_ctx.form, "channel_id", channel_id)  # type String
    Swagger.set_header_accept(_ctx, ["application/json"])
    Swagger.set_header_content_type(_ctx, (_mediaType === nothing) ? ["application/x-www-form-urlencoded", "application/json"] : [_mediaType])
    return _ctx
end

"""

Delete a public or private channel.
Param: channel_id::String (required)
Return: Dict{String, Any}
"""
function adminConversationsDelete(_api::AdminConversationsApi, channel_id::String; _mediaType=nothing)
    _ctx = _swaggerinternal_adminConversationsDelete(_api, channel_id; _mediaType=_mediaType)
    Swagger.exec(_ctx)
end

function adminConversationsDelete(_api::AdminConversationsApi, response_stream::Channel, channel_id::String; _mediaType=nothing)
    _ctx = _swaggerinternal_adminConversationsDelete(_api, channel_id; _mediaType=_mediaType)
    Swagger.exec(_ctx, response_stream)
end

function _swaggerinternal_adminConversationsDisconnectShared(_api::AdminConversationsApi, channel_id::String; leaving_team_ids=nothing, _mediaType=nothing)
    _ctx = Swagger.Ctx(_api.client, "POST", Dict{String, Any}, "/admin.conversations.disconnectShared", ["slackAuth"])
    Swagger.set_param(_ctx.form, "channel_id", channel_id)  # type String
    Swagger.set_param(_ctx.form, "leaving_team_ids", leaving_team_ids)  # type String
    Swagger.set_header_accept(_ctx, ["application/json"])
    Swagger.set_header_content_type(_ctx, (_mediaType === nothing) ? ["application/x-www-form-urlencoded", "application/json"] : [_mediaType])
    return _ctx
end

"""

Disconnect a connected channel from one or more workspaces.
Param: channel_id::String (required)
Param: leaving_team_ids::String
Return: Dict{String, Any}
"""
function adminConversationsDisconnectShared(_api::AdminConversationsApi, channel_id::String; leaving_team_ids=nothing, _mediaType=nothing)
    _ctx = _swaggerinternal_adminConversationsDisconnectShared(_api, channel_id; leaving_team_ids=leaving_team_ids, _mediaType=_mediaType)
    Swagger.exec(_ctx)
end

function adminConversationsDisconnectShared(_api::AdminConversationsApi, response_stream::Channel, channel_id::String; leaving_team_ids=nothing, _mediaType=nothing)
    _ctx = _swaggerinternal_adminConversationsDisconnectShared(_api, channel_id; leaving_team_ids=leaving_team_ids, _mediaType=_mediaType)
    Swagger.exec(_ctx, response_stream)
end

function _swaggerinternal_adminConversationsGetConversationPrefs(_api::AdminConversationsApi, channel_id::String; _mediaType=nothing)
    _ctx = Swagger.Ctx(_api.client, "GET", Dict{String, Any}, "/admin.conversations.getConversationPrefs", ["slackAuth"])
    Swagger.set_param(_ctx.query, "channel_id", channel_id)  # type String
    Swagger.set_header_accept(_ctx, ["application/json"])
    Swagger.set_header_content_type(_ctx, (_mediaType === nothing) ? ["application/x-www-form-urlencoded", "application/json"] : [_mediaType])
    return _ctx
end

"""

Get conversation preferences for a public or private channel.
Param: channel_id::String (required)
Return: Dict{String, Any}
"""
function adminConversationsGetConversationPrefs(_api::AdminConversationsApi, channel_id::String; _mediaType=nothing)
    _ctx = _swaggerinternal_adminConversationsGetConversationPrefs(_api, channel_id; _mediaType=_mediaType)
    Swagger.exec(_ctx)
end

function adminConversationsGetConversationPrefs(_api::AdminConversationsApi, response_stream::Channel, channel_id::String; _mediaType=nothing)
    _ctx = _swaggerinternal_adminConversationsGetConversationPrefs(_api, channel_id; _mediaType=_mediaType)
    Swagger.exec(_ctx, response_stream)
end

function _swaggerinternal_adminConversationsGetTeams(_api::AdminConversationsApi, channel_id::String; cursor=nothing, limit=nothing, _mediaType=nothing)
    _ctx = Swagger.Ctx(_api.client, "GET", Dict{String, Any}, "/admin.conversations.getTeams", ["slackAuth"])
    Swagger.set_param(_ctx.query, "channel_id", channel_id)  # type String
    Swagger.set_param(_ctx.query, "cursor", cursor)  # type String
    Swagger.set_param(_ctx.query, "limit", limit)  # type Int32
    Swagger.set_header_accept(_ctx, ["application/json"])
    Swagger.set_header_content_type(_ctx, (_mediaType === nothing) ? ["application/x-www-form-urlencoded", "application/json"] : [_mediaType])
    return _ctx
end

"""

Get all the workspaces a given public or private channel is connected to within this Enterprise org.
Param: channel_id::String (required)
Param: cursor::String
Param: limit::Int32
Return: Dict{String, Any}
"""
function adminConversationsGetTeams(_api::AdminConversationsApi, channel_id::String; cursor=nothing, limit=nothing, _mediaType=nothing)
    _ctx = _swaggerinternal_adminConversationsGetTeams(_api, channel_id; cursor=cursor, limit=limit, _mediaType=_mediaType)
    Swagger.exec(_ctx)
end

function adminConversationsGetTeams(_api::AdminConversationsApi, response_stream::Channel, channel_id::String; cursor=nothing, limit=nothing, _mediaType=nothing)
    _ctx = _swaggerinternal_adminConversationsGetTeams(_api, channel_id; cursor=cursor, limit=limit, _mediaType=_mediaType)
    Swagger.exec(_ctx, response_stream)
end

function _swaggerinternal_adminConversationsInvite(_api::AdminConversationsApi, user_ids::String, channel_id::String; _mediaType=nothing)
    _ctx = Swagger.Ctx(_api.client, "POST", Dict{String, Any}, "/admin.conversations.invite", ["slackAuth"])
    Swagger.set_param(_ctx.form, "user_ids", user_ids)  # type String
    Swagger.set_param(_ctx.form, "channel_id", channel_id)  # type String
    Swagger.set_header_accept(_ctx, ["application/json"])
    Swagger.set_header_content_type(_ctx, (_mediaType === nothing) ? ["application/x-www-form-urlencoded", "application/json"] : [_mediaType])
    return _ctx
end

"""

Invite a user to a public or private channel.
Param: user_ids::String (required)
Param: channel_id::String (required)
Return: Dict{String, Any}
"""
function adminConversationsInvite(_api::AdminConversationsApi, user_ids::String, channel_id::String; _mediaType=nothing)
    _ctx = _swaggerinternal_adminConversationsInvite(_api, user_ids, channel_id; _mediaType=_mediaType)
    Swagger.exec(_ctx)
end

function adminConversationsInvite(_api::AdminConversationsApi, response_stream::Channel, user_ids::String, channel_id::String; _mediaType=nothing)
    _ctx = _swaggerinternal_adminConversationsInvite(_api, user_ids, channel_id; _mediaType=_mediaType)
    Swagger.exec(_ctx, response_stream)
end

function _swaggerinternal_adminConversationsRename(_api::AdminConversationsApi, channel_id::String, name::String; _mediaType=nothing)
    _ctx = Swagger.Ctx(_api.client, "POST", Dict{String, Any}, "/admin.conversations.rename", ["slackAuth"])
    Swagger.set_param(_ctx.form, "channel_id", channel_id)  # type String
    Swagger.set_param(_ctx.form, "name", name)  # type String
    Swagger.set_header_accept(_ctx, ["application/json"])
    Swagger.set_header_content_type(_ctx, (_mediaType === nothing) ? ["application/x-www-form-urlencoded", "application/json"] : [_mediaType])
    return _ctx
end

"""

Rename a public or private channel.
Param: channel_id::String (required)
Param: name::String (required)
Return: Dict{String, Any}
"""
function adminConversationsRename(_api::AdminConversationsApi, channel_id::String, name::String; _mediaType=nothing)
    _ctx = _swaggerinternal_adminConversationsRename(_api, channel_id, name; _mediaType=_mediaType)
    Swagger.exec(_ctx)
end

function adminConversationsRename(_api::AdminConversationsApi, response_stream::Channel, channel_id::String, name::String; _mediaType=nothing)
    _ctx = _swaggerinternal_adminConversationsRename(_api, channel_id, name; _mediaType=_mediaType)
    Swagger.exec(_ctx, response_stream)
end

function _swaggerinternal_adminConversationsSearch(_api::AdminConversationsApi; team_ids=nothing, query=nothing, limit=nothing, cursor=nothing, search_channel_types=nothing, sort=nothing, sort_dir=nothing, _mediaType=nothing)
    _ctx = Swagger.Ctx(_api.client, "GET", Dict{String, Any}, "/admin.conversations.search", ["slackAuth"])
    Swagger.set_param(_ctx.query, "team_ids", team_ids)  # type String
    Swagger.set_param(_ctx.query, "query", query)  # type String
    Swagger.set_param(_ctx.query, "limit", limit)  # type Int32
    Swagger.set_param(_ctx.query, "cursor", cursor)  # type String
    Swagger.set_param(_ctx.query, "search_channel_types", search_channel_types)  # type String
    Swagger.set_param(_ctx.query, "sort", sort)  # type String
    Swagger.set_param(_ctx.query, "sort_dir", sort_dir)  # type String
    Swagger.set_header_accept(_ctx, ["application/json"])
    Swagger.set_header_content_type(_ctx, (_mediaType === nothing) ? ["application/x-www-form-urlencoded", "application/json"] : [_mediaType])
    return _ctx
end

"""

Search for public or private channels in an Enterprise organization.
Param: team_ids::String
Param: query::String
Param: limit::Int32
Param: cursor::String
Param: search_channel_types::String
Param: sort::String
Param: sort_dir::String
Return: Dict{String, Any}
"""
function adminConversationsSearch(_api::AdminConversationsApi; team_ids=nothing, query=nothing, limit=nothing, cursor=nothing, search_channel_types=nothing, sort=nothing, sort_dir=nothing, _mediaType=nothing)
    _ctx = _swaggerinternal_adminConversationsSearch(_api; team_ids=team_ids, query=query, limit=limit, cursor=cursor, search_channel_types=search_channel_types, sort=sort, sort_dir=sort_dir, _mediaType=_mediaType)
    Swagger.exec(_ctx)
end

function adminConversationsSearch(_api::AdminConversationsApi, response_stream::Channel; team_ids=nothing, query=nothing, limit=nothing, cursor=nothing, search_channel_types=nothing, sort=nothing, sort_dir=nothing, _mediaType=nothing)
    _ctx = _swaggerinternal_adminConversationsSearch(_api; team_ids=team_ids, query=query, limit=limit, cursor=cursor, search_channel_types=search_channel_types, sort=sort, sort_dir=sort_dir, _mediaType=_mediaType)
    Swagger.exec(_ctx, response_stream)
end

function _swaggerinternal_adminConversationsSetConversationPrefs(_api::AdminConversationsApi, channel_id::String, prefs::String; _mediaType=nothing)
    _ctx = Swagger.Ctx(_api.client, "POST", Dict{String, Any}, "/admin.conversations.setConversationPrefs", ["slackAuth"])
    Swagger.set_param(_ctx.form, "channel_id", channel_id)  # type String
    Swagger.set_param(_ctx.form, "prefs", prefs)  # type String
    Swagger.set_header_accept(_ctx, ["application/json"])
    Swagger.set_header_content_type(_ctx, (_mediaType === nothing) ? ["application/x-www-form-urlencoded", "application/json"] : [_mediaType])
    return _ctx
end

"""

Set the posting permissions for a public or private channel.
Param: channel_id::String (required)
Param: prefs::String (required)
Return: Dict{String, Any}
"""
function adminConversationsSetConversationPrefs(_api::AdminConversationsApi, channel_id::String, prefs::String; _mediaType=nothing)
    _ctx = _swaggerinternal_adminConversationsSetConversationPrefs(_api, channel_id, prefs; _mediaType=_mediaType)
    Swagger.exec(_ctx)
end

function adminConversationsSetConversationPrefs(_api::AdminConversationsApi, response_stream::Channel, channel_id::String, prefs::String; _mediaType=nothing)
    _ctx = _swaggerinternal_adminConversationsSetConversationPrefs(_api, channel_id, prefs; _mediaType=_mediaType)
    Swagger.exec(_ctx, response_stream)
end

function _swaggerinternal_adminConversationsSetTeams(_api::AdminConversationsApi, channel_id::String; team_id=nothing, target_team_ids=nothing, org_channel=nothing, _mediaType=nothing)
    _ctx = Swagger.Ctx(_api.client, "POST", Dict{String, Any}, "/admin.conversations.setTeams", ["slackAuth"])
    Swagger.set_param(_ctx.form, "channel_id", channel_id)  # type String
    Swagger.set_param(_ctx.form, "team_id", team_id)  # type String
    Swagger.set_param(_ctx.form, "target_team_ids", target_team_ids)  # type String
    Swagger.set_param(_ctx.form, "org_channel", org_channel)  # type Bool
    Swagger.set_header_accept(_ctx, ["application/json"])
    Swagger.set_header_content_type(_ctx, (_mediaType === nothing) ? ["application/x-www-form-urlencoded", "application/json"] : [_mediaType])
    return _ctx
end

"""

Set the workspaces in an Enterprise grid org that connect to a public or private channel.
Param: channel_id::String (required)
Param: team_id::String
Param: target_team_ids::String
Param: org_channel::Bool
Return: Dict{String, Any}
"""
function adminConversationsSetTeams(_api::AdminConversationsApi, channel_id::String; team_id=nothing, target_team_ids=nothing, org_channel=nothing, _mediaType=nothing)
    _ctx = _swaggerinternal_adminConversationsSetTeams(_api, channel_id; team_id=team_id, target_team_ids=target_team_ids, org_channel=org_channel, _mediaType=_mediaType)
    Swagger.exec(_ctx)
end

function adminConversationsSetTeams(_api::AdminConversationsApi, response_stream::Channel, channel_id::String; team_id=nothing, target_team_ids=nothing, org_channel=nothing, _mediaType=nothing)
    _ctx = _swaggerinternal_adminConversationsSetTeams(_api, channel_id; team_id=team_id, target_team_ids=target_team_ids, org_channel=org_channel, _mediaType=_mediaType)
    Swagger.exec(_ctx, response_stream)
end

function _swaggerinternal_adminConversationsUnarchive(_api::AdminConversationsApi, channel_id::String; _mediaType=nothing)
    _ctx = Swagger.Ctx(_api.client, "POST", Dict{String, Any}, "/admin.conversations.unarchive", ["slackAuth"])
    Swagger.set_param(_ctx.form, "channel_id", channel_id)  # type String
    Swagger.set_header_accept(_ctx, ["application/json"])
    Swagger.set_header_content_type(_ctx, (_mediaType === nothing) ? ["application/x-www-form-urlencoded", "application/json"] : [_mediaType])
    return _ctx
end

"""

Unarchive a public or private channel.
Param: channel_id::String (required)
Return: Dict{String, Any}
"""
function adminConversationsUnarchive(_api::AdminConversationsApi, channel_id::String; _mediaType=nothing)
    _ctx = _swaggerinternal_adminConversationsUnarchive(_api, channel_id; _mediaType=_mediaType)
    Swagger.exec(_ctx)
end

function adminConversationsUnarchive(_api::AdminConversationsApi, response_stream::Channel, channel_id::String; _mediaType=nothing)
    _ctx = _swaggerinternal_adminConversationsUnarchive(_api, channel_id; _mediaType=_mediaType)
    Swagger.exec(_ctx, response_stream)
end

export adminConversationsArchive, adminConversationsConvertToPrivate, adminConversationsCreate, adminConversationsDelete, adminConversationsDisconnectShared, adminConversationsGetConversationPrefs, adminConversationsGetTeams, adminConversationsInvite, adminConversationsRename, adminConversationsSearch, adminConversationsSetConversationPrefs, adminConversationsSetTeams, adminConversationsUnarchive
