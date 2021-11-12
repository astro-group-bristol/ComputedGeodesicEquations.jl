using Test, ComputedGeodesicEquations

@testset "BoyerLindquist Coordinates" begin
    M = 1.0
    a = 1.0
    u = [0.0, 100.0, π / 2.0, 0.0]
    v = [0.0, -1.0, 0.0, 1e-4]

    @test BoyerLindquistCoords.null_constrain(u, v, M, a) ≈ -1.0204101936749481

    v[1] = -1.0204101936749481
    @test all(
        BoyerLindquistCoords.geodesic_eq(u, v, M, a) .≈ (
            0.00020820447042352235,
            0.00010307173991982942,
            6.6237276430728655e-25,
            2.041442998442851e-6,
        ),
    )

    m = BoyerLindquist(M=M, a=a)
    @test BoyerLindquistCoords.null_constrain(u, v, M, a) ≈ null_constrain(u, v, m)
end

@testset "EddingtonFinkelstein Coordinates" begin
    M = 1.0
    u = [0.0, 100.0, π / 2.0, 0.0]
    v = [0.0, -1.0, 0.0, 1e-4]

    @test EddingtonFinkelsteinCoords.null_constrain(u, v, M) ≈ -1.0408663253056722

    v[1] = -1.0408663253056722
    @test all(
        EddingtonFinkelsteinCoords.geodesic_eq(u, v, M) .≈
        (-0.00041648353577666787, 9.699999999999988e-7, 6.123233995736766e-25, 2.0e-6),
    )
end
