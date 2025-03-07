using Documenter
using Random
using TensorKit, TensorKitSectors

pages = ["Home" => "index.md",
         "Manual" => ["man/intro.md", "man/tutorial.md", "man/categories.md",
                      "man/spaces.md", "man/sectors.md", "man/tensors.md"],
         "Library" => ["lib/sectors.md", "lib/spaces.md", "lib/tensors.md"],
         "Index" => ["index/index.md"]]

makedocs(; modules=[TensorKit, TensorKitSectors],
         sitename="TensorKit.jl",
         authors="Jutho Haegeman",
         warnonly=[:missing_docs, :cross_references],
         format=Documenter.HTML(; prettyurls=get(ENV, "CI", nothing) == "true",
                                mathengine=MathJax()),
         pages=pages,
         pagesonly=true)

deploydocs(; repo="github.com/Jutho/TensorKit.jl.git", push_preview=true)
