using BenchmarkTools
using StaticArrays 

using ComputedGeodesicEquations

randpos() = (rand(0.0:1000.0), rand(1.1:10.0), rand(0.1:π/1.1), rand(-π/3:π/3))

us = [ SVector{4, Float64}([randpos()...]) for i in 1:1000 ]
vs = [ SVector{4, Float64}([randpos()...]) for i in 1:1000 ]


function runner(us, vs, m)
    for (u, v) in zip(us, vs)
        geodesic_eq(m, u, v)
    end
end


suite = BenchmarkGroup()
suite["regular"] = BenchmarkGroup()
suite["jacobian"] = BenchmarkGroup()

suite["regular"]["boyer-lindquist"] = @benchmarkable runner($us, $vs, m) setup=(m = BoyerLindquist())
suite["jacobian"]["boyer-lindquist"] = @benchmarkable runner($us, $vs, m) setup=(m = BoyerLindquistJac())

suite["regular"]["johannsen-psaltis"] = @benchmarkable runner($us, $vs, m) setup=(m = JohannsenPsaltis())
suite["jacobian"]["johannsen-psaltis"] = @benchmarkable runner($us, $vs, m) setup=(m = JohannsenPsaltisJac())

suite["regular"]["eddington-finkelstein"] = @benchmarkable runner($us, $vs, m) setup=(m = EddingtonFinkelstein())
suite["jacobian"]["eddington-finkelstein"] = @benchmarkable runner($us, $vs, m) setup=(m = EddingtonFinkelsteinJac())

suite["regular"]["morris-thorne"] = @benchmarkable runner($us, $vs, m) setup=(m = MorrisThorne())
suite["jacobian"]["morris-thorne"] = @benchmarkable runner($us, $vs, m) setup=(m = MorrisThorneJac())

tune!(suite)
results = run(suite, verbose = true)