# This file was generated by the Julia Swagger Code Generator
# Do not modify this file directly. Modify the swagger specification instead.


@doc raw"""
    ObjsComments(;
    )

"""
mutable struct ObjsComments <: SwaggerModel

    function ObjsComments(;)
        o = new()
        o
    end
end # type ObjsComments

const _property_map_ObjsComments = Dict{Symbol,Symbol}()
const _property_types_ObjsComments = Dict{Symbol,String}()
Base.propertynames(::Type{ ObjsComments }) = collect(keys(_property_map_ObjsComments))
Swagger.property_type(::Type{ ObjsComments }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_ObjsComments[name]))}
Swagger.field_name(::Type{ ObjsComments }, property_name::Symbol) =  _property_map_ObjsComments[property_name]

function check_required(o::ObjsComments)
    true
end

function validate_property(::Type{ ObjsComments }, name::Symbol, val)
end
