using EpiJ
using Documenter

DocMeta.setdocmeta!(EpiJ, :DocTestSetup, :(using EpiJ); recursive=true)

makedocs(;
    modules=[EpiJ],
    authors="Jacob Zelko <jacobszelko@gmail.com>, Georgia Tech Research Institute",
    repo="https://github.com/JuliaHealth/EpiJ.jl/blob/{commit}{path}#{line}",
    sitename="EpiJ.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://juliahealth.org/EpiJ.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/JuliaHealth/EpiJ.jl",
)
