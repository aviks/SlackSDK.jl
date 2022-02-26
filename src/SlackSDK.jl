module SlackSDK
using Swagger

export WebClient

include("web/Web.jl")
using .Web

global const apiNames = Ref{Array{String}}()

# Struct encapsulating a connection to the Slack API. 
struct WebClient
    token::String
    swagger_client::Swagger.Client
    signature::String

    function WebClient(token=get(ENV, "SLACK_API_TOKEN",
	""); base_url="https://www.slack.com/api/", signature="") 
        if isempty(token) 
            error("Token is empty!\nA Slack API token is required to perform API operations. Set an environment variable `SLACK_API_TOKEN` or provide directly to the `WebClient` constructor" )
        else 
            hdrs = Dict{String,String}("Authorization"=>"Bearer $token")
            return new(token, Swagger.Client(base_url, headers=hdrs), signature)
        end
    end
end

Base.show(io::IO, wc::WebClient) = print(io, "Slack Web API client, with base url '$(wc.swagger_client.root)' and token '$(wc.token[1:8])....$(wc.token[end-1:end])'")

function Base.getproperty(wc::WebClient, method::Symbol)
    if hasfield(WebClient, method)
        return getfield(wc, method)
    else 
        nm = apiNames[] 
        name_list = split(String(method), "_"; keepempty=false)
        api_object_name = join(map(x->titlecase(x, strict=false), name_list[1:end-1])) * "Api"
        if findfirst(x -> x==api_object_name, nm) === nothing
            throw(UndefVarError(method))
        end
        api_object_type = getfield(SlackSDK.Web, Symbol(api_object_name))
        api_object = api_object_type(wc.swagger_client)
        method_name = name_list[1] * join(map(x->titlecase(x, strict=false), name_list[2:end]))
        try
            method_fn = getfield(SlackSDK.Web, Symbol(method_name))
            return (x...; y...) -> begin
                    method_fn(api_object, x...; y...)
                end
        catch e
            if typeof(e) == UndefVarError
                rethrow(UndefVarError(method))
            else
                rethrow()
            end
        end
    end
end


function Base.propertynames(wc::WebClient)
       return Symbol.(methodNames)
end

function __init__()
    nm = String.(names(SlackSDK.Web))
    apiNames[] = copy(filter(x->endswith(x, "Api"), nm))
end


#=
Generated with the following code. Not doing this at runtime, since reading non-source files are problematic if packages are compiled to sysimages. 
Regenerate if the spec file changes.
     using JSON3
     file = read("specs/slack_web_openapi_v2_without_examples.json", String);
     j = JSON3.read(file);
     a = map(x->replace(x[2:end], "."=>"_"), string.(keys(j.paths)));
     print(a)         
=#
const methodNames = [
    "admin_apps_approve",
	"admin_apps_approved_list",
	"admin_apps_requests_list",
	"admin_apps_restrict",
	"admin_apps_restricted_list",
	"admin_conversations_archive",
	"admin_conversations_convertToPrivate",
	"admin_conversations_create",
	"admin_conversations_delete",
	"admin_conversations_disconnectShared",
	"admin_conversations_ekm_listOriginalConnectedChannelInfo",
	"admin_conversations_getConversationPrefs",
	"admin_conversations_getTeams",
	"admin_conversations_invite",
	"admin_conversations_rename",
	"admin_conversations_restrictAccess_addGroup",
	"admin_conversations_restrictAccess_listGroups",
	"admin_conversations_restrictAccess_removeGroup",
	"admin_conversations_search",
	"admin_conversations_setConversationPrefs",
	"admin_conversations_setTeams",
	"admin_conversations_unarchive",
	"admin_emoji_add",
	"admin_emoji_addAlias",
	"admin_emoji_list",
	"admin_emoji_remove",
	"admin_emoji_rename",
	"admin_inviteRequests_approve",
	"admin_inviteRequests_approved_list",
	"admin_inviteRequests_denied_list",
	"admin_inviteRequests_deny",
	"admin_inviteRequests_list",
	"admin_teams_admins_list",
	"admin_teams_create",
	"admin_teams_list",
	"admin_teams_owners_list",
	"admin_teams_settings_info",
	"admin_teams_settings_setDefaultChannels",
	"admin_teams_settings_setDescription",
	"admin_teams_settings_setDiscoverability",
	"admin_teams_settings_setIcon",
	"admin_teams_settings_setName",
	"admin_usergroups_addChannels",
	"admin_usergroups_addTeams",
	"admin_usergroups_listChannels",
	"admin_usergroups_removeChannels",
	"admin_users_assign",
	"admin_users_invite",
	"admin_users_list",
	"admin_users_remove",
	"admin_users_session_invalidate",
	"admin_users_session_reset",
	"admin_users_setAdmin",
	"admin_users_setExpiration",
	"admin_users_setOwner",
	"admin_users_setRegular",
	"api_test",
	"apps_event_authorizations_list",
	"apps_permissions_info",
	"apps_permissions_request",
	"apps_permissions_resources_list",
	"apps_permissions_scopes_list",
	"apps_permissions_users_list",
	"apps_permissions_users_request",
	"apps_uninstall",
	"auth_revoke",
	"auth_test",
	"bots_info",
	"calls_add",
	"calls_end",
	"calls_info",
	"calls_participants_add",
	"calls_participants_remove",
	"calls_update",
	"chat_delete",
	"chat_deleteScheduledMessage",
	"chat_getPermalink",
	"chat_meMessage",
	"chat_postEphemeral",
	"chat_postMessage",
	"chat_scheduleMessage",
	"chat_scheduledMessages_list",
	"chat_unfurl",
	"chat_update",
	"conversations_archive",
	"conversations_close",
	"conversations_create",
	"conversations_history",
	"conversations_info",
	"conversations_invite",
	"conversations_join",
	"conversations_kick",
	"conversations_leave",
	"conversations_list",
	"conversations_mark",
	"conversations_members",
	"conversations_open",
	"conversations_rename",
	"conversations_replies",
	"conversations_setPurpose",
	"conversations_setTopic",
	"conversations_unarchive",
	"dialog_open",
	"dnd_endDnd",
	"dnd_endSnooze",
	"dnd_info",
	"dnd_setSnooze",
	"dnd_teamInfo",
	"emoji_list",
	"files_comments_delete",
	"files_delete",
	"files_info",
	"files_list",
	"files_remote_add",
	"files_remote_info",
	"files_remote_list",
	"files_remote_remove",
	"files_remote_share",
	"files_remote_update",
	"files_revokePublicURL",
	"files_sharedPublicURL",
	"files_upload",
	"migration_exchange",
	"oauth_access",
	"oauth_token",
	"oauth_v2_access",
	"pins_add",
	"pins_list",
	"pins_remove",
	"reactions_add",
	"reactions_get",
	"reactions_list",
	"reactions_remove",
	"reminders_add",
	"reminders_complete",
	"reminders_delete",
	"reminders_info",
	"reminders_list",
	"rtm_connect",
	"search_messages",
	"stars_add",
	"stars_list",
	"stars_remove",
	"team_accessLogs",
	"team_billableInfo",
	"team_info",
	"team_integrationLogs",
	"team_profile_get",
	"usergroups_create",
	"usergroups_disable",
	"usergroups_enable",
	"usergroups_list",
	"usergroups_update",
	"usergroups_users_list",
	"usergroups_users_update",
	"users_conversations",
	"users_deletePhoto",
	"users_getPresence",
	"users_identity",
	"users_info",
	"users_list",
	"users_lookupByEmail",
	"users_profile_get",
	"users_profile_set",
	"users_setActive",
	"users_setPhoto",
	"users_setPresence",
	"views_open",
	"views_publish",
	"views_push",
	"views_update",
	"workflows_stepCompleted",
	"workflows_stepFailed",
	"workflows_updateStep"
]

end
