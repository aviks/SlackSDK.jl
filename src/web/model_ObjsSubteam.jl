# This file was generated by the Julia Swagger Code Generator
# Do not modify this file directly. Modify the swagger specification instead.


@doc raw"""
    ObjsSubteam(;
        auto_provision=nothing,
        auto_type=nothing,
        channel_count=nothing,
        created_by=nothing,
        date_create=nothing,
        date_delete=nothing,
        date_update=nothing,
        deleted_by=nothing,
        description=nothing,
        enterprise_subteam_id=nothing,
        handle=nothing,
        id=nothing,
        is_external=nothing,
        is_subteam=nothing,
        is_usergroup=nothing,
        name=nothing,
        prefs=nothing,
        team_id=nothing,
        updated_by=nothing,
        user_count=nothing,
        users=nothing,
    )

    - auto_provision::Bool
    - auto_type::Any
    - channel_count::Int32
    - created_by::DefsUserId
    - date_create::Int32
    - date_delete::Int32
    - date_update::Int32
    - deleted_by::Any
    - description::String
    - enterprise_subteam_id::String
    - handle::String
    - id::DefsSubteamId
    - is_external::Bool
    - is_subteam::Bool
    - is_usergroup::Bool
    - name::String
    - prefs::ObjsSubteamPrefs
    - team_id::DefsTeam
    - updated_by::DefsUserId
    - user_count::Int32
    - users::Vector{DefsUserId}
"""
mutable struct ObjsSubteam <: SwaggerModel
    auto_provision::Any # spec type: Union{ Nothing, Bool } # spec name: auto_provision
    auto_type::Any # spec type: Union{ Nothing, Any } # spec name: auto_type
    channel_count::Any # spec type: Union{ Nothing, Int32 } # spec name: channel_count
    created_by::Any # spec type: Union{ Nothing, DefsUserId } # spec name: created_by
    date_create::Any # spec type: Union{ Nothing, Int32 } # spec name: date_create
    date_delete::Any # spec type: Union{ Nothing, Int32 } # spec name: date_delete
    date_update::Any # spec type: Union{ Nothing, Int32 } # spec name: date_update
    deleted_by::Any # spec type: Union{ Nothing, Any } # spec name: deleted_by
    description::Any # spec type: Union{ Nothing, String } # spec name: description
    enterprise_subteam_id::Any # spec type: Union{ Nothing, String } # spec name: enterprise_subteam_id
    handle::Any # spec type: Union{ Nothing, String } # spec name: handle
    id::Any # spec type: Union{ Nothing, DefsSubteamId } # spec name: id
    is_external::Any # spec type: Union{ Nothing, Bool } # spec name: is_external
    is_subteam::Any # spec type: Union{ Nothing, Bool } # spec name: is_subteam
    is_usergroup::Any # spec type: Union{ Nothing, Bool } # spec name: is_usergroup
    name::Any # spec type: Union{ Nothing, String } # spec name: name
    prefs::Any # spec type: Union{ Nothing, ObjsSubteamPrefs } # spec name: prefs
    team_id::Any # spec type: Union{ Nothing, DefsTeam } # spec name: team_id
    updated_by::Any # spec type: Union{ Nothing, DefsUserId } # spec name: updated_by
    user_count::Any # spec type: Union{ Nothing, Int32 } # spec name: user_count
    users::Any # spec type: Union{ Nothing, Vector{DefsUserId} } # spec name: users

    function ObjsSubteam(;auto_provision=nothing, auto_type=nothing, channel_count=nothing, created_by=nothing, date_create=nothing, date_delete=nothing, date_update=nothing, deleted_by=nothing, description=nothing, enterprise_subteam_id=nothing, handle=nothing, id=nothing, is_external=nothing, is_subteam=nothing, is_usergroup=nothing, name=nothing, prefs=nothing, team_id=nothing, updated_by=nothing, user_count=nothing, users=nothing)
        o = new()
        validate_property(ObjsSubteam, Symbol("auto_provision"), auto_provision)
        setfield!(o, Symbol("auto_provision"), auto_provision)
        validate_property(ObjsSubteam, Symbol("auto_type"), auto_type)
        setfield!(o, Symbol("auto_type"), auto_type)
        validate_property(ObjsSubteam, Symbol("channel_count"), channel_count)
        setfield!(o, Symbol("channel_count"), channel_count)
        validate_property(ObjsSubteam, Symbol("created_by"), created_by)
        setfield!(o, Symbol("created_by"), created_by)
        validate_property(ObjsSubteam, Symbol("date_create"), date_create)
        setfield!(o, Symbol("date_create"), date_create)
        validate_property(ObjsSubteam, Symbol("date_delete"), date_delete)
        setfield!(o, Symbol("date_delete"), date_delete)
        validate_property(ObjsSubteam, Symbol("date_update"), date_update)
        setfield!(o, Symbol("date_update"), date_update)
        validate_property(ObjsSubteam, Symbol("deleted_by"), deleted_by)
        setfield!(o, Symbol("deleted_by"), deleted_by)
        validate_property(ObjsSubteam, Symbol("description"), description)
        setfield!(o, Symbol("description"), description)
        validate_property(ObjsSubteam, Symbol("enterprise_subteam_id"), enterprise_subteam_id)
        setfield!(o, Symbol("enterprise_subteam_id"), enterprise_subteam_id)
        validate_property(ObjsSubteam, Symbol("handle"), handle)
        setfield!(o, Symbol("handle"), handle)
        validate_property(ObjsSubteam, Symbol("id"), id)
        setfield!(o, Symbol("id"), id)
        validate_property(ObjsSubteam, Symbol("is_external"), is_external)
        setfield!(o, Symbol("is_external"), is_external)
        validate_property(ObjsSubteam, Symbol("is_subteam"), is_subteam)
        setfield!(o, Symbol("is_subteam"), is_subteam)
        validate_property(ObjsSubteam, Symbol("is_usergroup"), is_usergroup)
        setfield!(o, Symbol("is_usergroup"), is_usergroup)
        validate_property(ObjsSubteam, Symbol("name"), name)
        setfield!(o, Symbol("name"), name)
        validate_property(ObjsSubteam, Symbol("prefs"), prefs)
        setfield!(o, Symbol("prefs"), prefs)
        validate_property(ObjsSubteam, Symbol("team_id"), team_id)
        setfield!(o, Symbol("team_id"), team_id)
        validate_property(ObjsSubteam, Symbol("updated_by"), updated_by)
        setfield!(o, Symbol("updated_by"), updated_by)
        validate_property(ObjsSubteam, Symbol("user_count"), user_count)
        setfield!(o, Symbol("user_count"), user_count)
        validate_property(ObjsSubteam, Symbol("users"), users)
        setfield!(o, Symbol("users"), users)
        o
    end
end # type ObjsSubteam

const _property_map_ObjsSubteam = Dict{Symbol,Symbol}(Symbol("auto_provision")=>Symbol("auto_provision"), Symbol("auto_type")=>Symbol("auto_type"), Symbol("channel_count")=>Symbol("channel_count"), Symbol("created_by")=>Symbol("created_by"), Symbol("date_create")=>Symbol("date_create"), Symbol("date_delete")=>Symbol("date_delete"), Symbol("date_update")=>Symbol("date_update"), Symbol("deleted_by")=>Symbol("deleted_by"), Symbol("description")=>Symbol("description"), Symbol("enterprise_subteam_id")=>Symbol("enterprise_subteam_id"), Symbol("handle")=>Symbol("handle"), Symbol("id")=>Symbol("id"), Symbol("is_external")=>Symbol("is_external"), Symbol("is_subteam")=>Symbol("is_subteam"), Symbol("is_usergroup")=>Symbol("is_usergroup"), Symbol("name")=>Symbol("name"), Symbol("prefs")=>Symbol("prefs"), Symbol("team_id")=>Symbol("team_id"), Symbol("updated_by")=>Symbol("updated_by"), Symbol("user_count")=>Symbol("user_count"), Symbol("users")=>Symbol("users"))
const _property_types_ObjsSubteam = Dict{Symbol,String}(Symbol("auto_provision")=>"Bool", Symbol("auto_type")=>"Any", Symbol("channel_count")=>"Int32", Symbol("created_by")=>"DefsUserId", Symbol("date_create")=>"Int32", Symbol("date_delete")=>"Int32", Symbol("date_update")=>"Int32", Symbol("deleted_by")=>"Any", Symbol("description")=>"String", Symbol("enterprise_subteam_id")=>"String", Symbol("handle")=>"String", Symbol("id")=>"DefsSubteamId", Symbol("is_external")=>"Bool", Symbol("is_subteam")=>"Bool", Symbol("is_usergroup")=>"Bool", Symbol("name")=>"String", Symbol("prefs")=>"ObjsSubteamPrefs", Symbol("team_id")=>"DefsTeam", Symbol("updated_by")=>"DefsUserId", Symbol("user_count")=>"Int32", Symbol("users")=>"Vector{DefsUserId}")
Base.propertynames(::Type{ ObjsSubteam }) = collect(keys(_property_map_ObjsSubteam))
Swagger.property_type(::Type{ ObjsSubteam }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_ObjsSubteam[name]))}
Swagger.field_name(::Type{ ObjsSubteam }, property_name::Symbol) =  _property_map_ObjsSubteam[property_name]

function check_required(o::ObjsSubteam)
    (getproperty(o, Symbol("auto_provision")) === nothing) && (return false)
    (getproperty(o, Symbol("auto_type")) === nothing) && (return false)
    (getproperty(o, Symbol("created_by")) === nothing) && (return false)
    (getproperty(o, Symbol("date_create")) === nothing) && (return false)
    (getproperty(o, Symbol("date_delete")) === nothing) && (return false)
    (getproperty(o, Symbol("date_update")) === nothing) && (return false)
    (getproperty(o, Symbol("deleted_by")) === nothing) && (return false)
    (getproperty(o, Symbol("description")) === nothing) && (return false)
    (getproperty(o, Symbol("enterprise_subteam_id")) === nothing) && (return false)
    (getproperty(o, Symbol("handle")) === nothing) && (return false)
    (getproperty(o, Symbol("id")) === nothing) && (return false)
    (getproperty(o, Symbol("is_external")) === nothing) && (return false)
    (getproperty(o, Symbol("is_subteam")) === nothing) && (return false)
    (getproperty(o, Symbol("is_usergroup")) === nothing) && (return false)
    (getproperty(o, Symbol("name")) === nothing) && (return false)
    (getproperty(o, Symbol("prefs")) === nothing) && (return false)
    (getproperty(o, Symbol("team_id")) === nothing) && (return false)
    (getproperty(o, Symbol("updated_by")) === nothing) && (return false)
    true
end

function validate_property(::Type{ ObjsSubteam }, name::Symbol, val)
end
