# This file is a part of RPSStatistics.jl, licensed under the MIT License (MIT).

using Test
using RPSStatistics
import Documenter

Documenter.DocMeta.setdocmeta!(
    RPSStatistics,
    :DocTestSetup,
    :(using RPSStatistics);
    recursive=true,
)
Documenter.doctest(RPSStatistics)
