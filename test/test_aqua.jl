# This file is a part of RPSStatistics.jl, licensed under the MIT License (MIT).

import Test
import Aqua
import RPSStatistics

Test.@testset "Aqua tests" begin
    Aqua.test_all(RPSStatistics)
end # testset
