using SlackSDK
using Documenter

DocMeta.setdocmeta!(SlackSDK, :DocTestSetup, :(using SlackSDK); recursive=true)

makedocs(;
    modules=[SlackSDK],
    authors="Avik Sengupta",
    repo="https://github.com/aviks/SlackSDK.jl/blob/{commit}{path}#{line}",
    sitename="SlackSDK.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)
