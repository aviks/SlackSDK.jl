# This file was generated by the Julia Swagger Code Generator
# Do not modify this file directly. Modify the swagger specification instead.


@doc raw"""This is a very loose definition, in the future, we&#39;ll populate this with deeper schema in this definition namespace.

    Blocks(;
    )

"""
mutable struct Blocks <: SwaggerModel

    function Blocks(;)
        o = new()
        o
    end
end # type Blocks

const _property_map_Blocks = Dict{Symbol,Symbol}()
const _property_types_Blocks = Dict{Symbol,String}()
Base.propertynames(::Type{ Blocks }) = collect(keys(_property_map_Blocks))
Swagger.property_type(::Type{ Blocks }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_Blocks[name]))}
Swagger.field_name(::Type{ Blocks }, property_name::Symbol) =  _property_map_Blocks[property_name]

function check_required(o::Blocks)
    true
end

function validate_property(::Type{ Blocks }, name::Symbol, val)
end