using SlackSDK
using Documenter

DocMeta.setdocmeta!(SlackSDK, :DocTestSetup, :(using SlackSDK); recursive=true)

indexio = IOBuffer()
bodyio = IOBuffer()

for x in SlackSDK.methodNames
    parts =  split(x, "_")
    for i in 2:length(parts)
        z = parts[i]
        parts[i] = uppercase(z[1]) * z[2:end]
    end
    fname = join(parts, "")
    fn = getfield(SlackSDK, Symbol(fname))
    api_object_name = join(map(x->titlecase(x, strict=false),parts[1:end-1])) * "Api"
    for m in methods(fn)
        tv, decls, file, line = Base.arg_decl_parts(m)
        if decls[2][2] != "SlackSDK.Web.$api_object_name" || (length(decls)>2 && decls[3][1] == "response_stream")
            continue
        end
        fndocs = string(Base.Docs.doc(Base.Docs.Binding(SlackSDK.Web, Symbol(fname))))
        u = length(fndocs) ÷ 2    #We get duplicate docstrings
        fndocs = fndocs[1:u+1]
        fndocs = replace(fndocs, "*"=>"_")
        fndocs = replace(fndocs, "Param:"=>"\n\tParam:")
        fndocs = replace(fndocs, "Param:"=>"\n\tParam:", count=1)
        fndocs = replace(fndocs, "Return:"=>"\n\n\tReturn:")
        write(bodyio, """
        ### `$x`

        $fndocs

        [https://api.slack.com/methods/$(replace(x,"_"=>"."))](https://api.slack.com/methods/$(replace(x,"_"=>".")))

        """)
        write(indexio, "- [`$x`](#$x)\n")
    end
end

f = open(joinpath(@__DIR__, "src", "methods.md"), "w+")
write(f, """
# Slack API methods

This package exposes the following API methods. Each of these methods can be called as member functions of the `WebClient` stuct. 

Required arguments should be passed as positional arguments to these functions, and optional arguments are passed as keyword arguments. 
There are some documented [examples](./index.md#Examples) of how to call these methods.

There are some [discrepancies](https://github.com/slackapi/slack-api-specs/issues/70) between the online documentation and the api 
specs about which arguments are required. Refer to this page to double check the parameter names and types. 
Required parameters will be explicitly marked as such below. 

Each methods documentation below also links to Slack's online documentation about that method. 

""")
write(f, String(take!(indexio)))
write(f, "\n\n\n")
write(f, String(take!(bodyio)))
close(f)

makedocs(;
    modules=[SlackSDK],
    authors="Avik Sengupta",
    repo="https://github.com/aviks/SlackSDK.jl/blob/{commit}{path}#{line}",
    sitename="SlackSDK.jl",
    doctest=false,
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
        "Methods" => "methods.md",
        "Types" => "types.md"
    ],
)
