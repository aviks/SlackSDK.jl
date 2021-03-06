# This file was generated by the Julia Swagger Code Generator
# Do not modify this file directly. Modify the swagger specification instead.


@doc raw"""
    BlocksInner(;
        type=nothing,
    )

    - type::String
"""
mutable struct BlocksInner <: SwaggerModel
    type::Any # spec type: Union{ Nothing, String } # spec name: type

    function BlocksInner(;type=nothing)
        o = new()
        validate_property(BlocksInner, Symbol("type"), type)
        setfield!(o, Symbol("type"), type)
        o
    end
end # type BlocksInner

const _property_map_BlocksInner = Dict{Symbol,Symbol}(Symbol("type")=>Symbol("type"))
const _property_types_BlocksInner = Dict{Symbol,String}(Symbol("type")=>"String")
Base.propertynames(::Type{ BlocksInner }) = collect(keys(_property_map_BlocksInner))
Swagger.property_type(::Type{ BlocksInner }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_BlocksInner[name]))}
Swagger.field_name(::Type{ BlocksInner }, property_name::Symbol) =  _property_map_BlocksInner[property_name]

function check_required(o::BlocksInner)
    (getproperty(o, Symbol("type")) === nothing) && (return false)
    true
end

function validate_property(::Type{ BlocksInner }, name::Symbol, val)
end
