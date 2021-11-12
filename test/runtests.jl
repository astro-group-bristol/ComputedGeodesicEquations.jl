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
            -0.0002083677190516319,
            -1.014389097284123e-7,
            5.0373193274816055e-26,
            1.958148390240991e-6,
        ),
    )

    m = BoyerLindquist(M = M, a = a)
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
