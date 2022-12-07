using Screenshots
using Documenter

DocMeta.setdocmeta!(Screenshots, :DocTestSetup, :(using Screenshots); recursive=true)

makedocs(;
    modules=[Screenshots],
    authors="Lilith Hafner <Lilith.Hafner@gmail.com> and contributors",
    repo="https://github.com/LilithHafner/Screenshots.jl/blob/{commit}{path}#{line}",
    sitename="Screenshots.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://LilithHafner.github.io/Screenshots.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/LilithHafner/Screenshots.jl",
    devbranch="main",
)
