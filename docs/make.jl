using GeneralizedBeta1Distribution
using Documenter

DocMeta.setdocmeta!(GeneralizedBeta1Distribution, :DocTestSetup, :(using GeneralizedBeta1Distribution); recursive=true)

makedocs(;
    modules=[GeneralizedBeta1Distribution],
    authors="Mattias Villani",
    repo="https://github.com/mattiasvillani/GeneralizedBeta1Distribution.jl/blob/{commit}{path}#{line}",
    sitename="GeneralizedBeta1Distribution.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://mattiasvillani.github.io/GeneralizedBeta1Distribution.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/mattiasvillani/GeneralizedBeta1Distribution.jl",
    devbranch="main",
)
