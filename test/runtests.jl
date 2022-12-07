using Screenshots
using Test
using FileIO, Colors, FixedPointNumbers

@testset "Screenshots.jl" begin
    file = screenshot()
    @test endswith(file, ".png")
    @test load(file) isa Matrix{RGBA{N0f8}}
end
