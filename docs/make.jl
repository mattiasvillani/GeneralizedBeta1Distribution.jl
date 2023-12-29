using GeneralizedBeta1Distribution
using Documenter

DocMeta.setdocmeta!(GeneralizedBeta1Distribution, :DocTestSetup, :(using GeneralizedBeta1Distribution); recursive=true)

makedocs(;
    sitename="GeneralizedBeta1Distribution.jl",
    modules=[GeneralizedBeta1Distribution],
    authors="Mattias Villani",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://mattiasvillani.github.io/GeneralizedBeta1Distribution.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "home.md",
        "Implemented methods" => "methods.md",
        "Index" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/mattiasvillani/GeneralizedBeta1Distribution.jl",
)
