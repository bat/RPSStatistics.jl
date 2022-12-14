# Use
#
#     DOCUMENTER_DEBUG=true julia --color=yes make.jl local [nonstrict] [fixdoctests]
#
# for local builds.

using Documenter
using RPSStatistics

# Doctest setup
DocMeta.setdocmeta!(
    RPSStatistics,
    :DocTestSetup,
    :(using RPSStatistics);
    recursive=true,
)

makedocs(
    sitename = "RPSStatistics",
    modules = [RPSStatistics],
    format = Documenter.HTML(
        prettyurls = !("local" in ARGS),
        canonical = "https://bat.github.io/RPSStatistics.jl/stable/"
    ),
    pages = [
        "Home" => "index.md",
        "API" => "api.md",
        "LICENSE" => "LICENSE.md",
    ],
    doctest = ("fixdoctests" in ARGS) ? :fix : true,
    linkcheck = !("nonstrict" in ARGS),
    strict = !("nonstrict" in ARGS),
)

deploydocs(
    repo = "github.com/bat/RPSStatistics.jl.git",
    forcepush = true,
    push_preview = true,
)
