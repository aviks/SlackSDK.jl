# This file was generated by the Julia Swagger Code Generator
# Do not modify this file directly. Modify the swagger specification instead.


@doc raw"""
    ObjsPrimaryOwner(;
        email=nothing,
        id=nothing,
    )

    - email::String
    - id::String
"""
mutable struct ObjsPrimaryOwner <: SwaggerModel
    email::Any # spec type: Union{ Nothing, String } # spec name: email
    id::Any # spec type: Union{ Nothing, String } # spec name: id

    function ObjsPrimaryOwner(;email=nothing, id=nothing)
        o = new()
        validate_property(ObjsPrimaryOwner, Symbol("email"), email)
        setfield!(o, Symbol("email"), email)
        validate_property(ObjsPrimaryOwner, Symbol("id"), id)
        setfield!(o, Symbol("id"), id)
        o
    end
end # type ObjsPrimaryOwner

const _property_map_ObjsPrimaryOwner = Dict{Symbol,Symbol}(Symbol("email")=>Symbol("email"), Symbol("id")=>Symbol("id"))
const _property_types_ObjsPrimaryOwner = Dict{Symbol,String}(Symbol("email")=>"String", Symbol("id")=>"String")
Base.propertynames(::Type{ ObjsPrimaryOwner }) = collect(keys(_property_map_ObjsPrimaryOwner))
Swagger.property_type(::Type{ ObjsPrimaryOwner }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_ObjsPrimaryOwner[name]))}
Swagger.field_name(::Type{ ObjsPrimaryOwner }, property_name::Symbol) =  _property_map_ObjsPrimaryOwner[property_name]

function check_required(o::ObjsPrimaryOwner)
    (getproperty(o, Symbol("email")) === nothing) && (return false)
    (getproperty(o, Symbol("id")) === nothing) && (return false)
    true
end

function validate_property(::Type{ ObjsPrimaryOwner }, name::Symbol, val)
end