""" 

Automatically generated from SageMath calculations 

Fergus Baker - 9th Nov 2021

"""
module BoyerLindquistCoords

using ..ComputedGeodesicEquations

@inline function geodesic_eq(u, v, M, a)
    ComputedGeodesicEquations.@let_unpack u v begin
        cos_theta = cos(θ)
        sin_theta = sin(θ)

        out1 =
            2 * (
                (
                    4 * M * a^3 * r^4 * cos_theta^2 + M * a^3 * r^4 + 3 * M * a * r^6 -
                    (M * a^7 - M * a^5 * r^2) * cos_theta^4
                ) *
                v_phi *
                v_r *
                sin_theta^2 +
                (
                    M * a^4 * r^2 - M * r^6 + (M * a^6 - M * a^2 * r^4) * cos_theta^2 -
                    (
                        M * a^4 * r^2 +
                        M * a^2 * r^4 +
                        (M * a^6 + M * a^4 * r^2) * cos_theta^2
                    ) * sin_theta^2
                ) *
                v_r *
                v_t +
                2 *
                (
                    (
                        (M * a^6 * r - 2 * M^2 * a^4 * r^2 + M * a^4 * r^3) * cos_theta^3 +
                        (M * a^4 * r^3 - 2 * M^2 * a^2 * r^4 + M * a^2 * r^5) * cos_theta
                    ) *
                    v_t *
                    sin_theta +
                    (
                        (M * a^7 * r - 2 * M^2 * a^5 * r^2 + M * a^5 * r^3) *
                        cos_theta *
                        sin_theta^5 -
                        (
                            M * a^7 * r - 2 * M^2 * a^5 * r^2 + 2 * M * a^5 * r^3 -
                            2 * M^2 * a^3 * r^4 + M * a^3 * r^5
                        ) *
                        cos_theta *
                        sin_theta^3
                    ) * v_phi
                ) *
                v_theta
            ) / (
                a^2 * r^6 - 2 * M * r^7 +
                r^8 +
                (a^8 - 2 * M * a^6 * r + a^6 * r^2) * cos_theta^6 +
                3 * (a^6 * r^2 - 2 * M * a^4 * r^3 + a^4 * r^4) * cos_theta^4 +
                3 * (a^4 * r^4 - 2 * M * a^2 * r^5 + a^2 * r^6) * cos_theta^2
            )
        out2 =
            (
                2 *
                (
                    M * a^5 * r^2 - 4 * M^2 * a^3 * r^3 - 4 * M^2 * a * r^5 +
                    M * a * r^6 +
                    2 * (2 * M^3 * a + M * a^3) * r^4 -
                    (
                        M * a^7 - 4 * M^2 * a^5 * r - 4 * M^2 * a^3 * r^3 +
                        M * a^3 * r^4 +
                        2 * (2 * M^3 * a^3 + M * a^5) * r^2
                    ) * cos_theta^2
                ) *
                v_phi *
                v_t *
                sin_theta^2 +
                2 *
                (
                    (a^8 - 2 * M * a^6 * r + a^6 * r^2) * cos_theta^5 +
                    2 * (a^6 * r^2 - 2 * M * a^4 * r^3 + a^4 * r^4) * cos_theta^3 +
                    (a^4 * r^4 - 2 * M * a^2 * r^5 + a^2 * r^6) * cos_theta
                ) *
                v_r *
                v_theta *
                sin_theta -
                (
                    (
                        M * a^6 * r^2 - 4 * M^2 * a^4 * r^3 - 4 * M^2 * a^2 * r^5 +
                        M * a^2 * r^6 +
                        2 * (2 * M^3 * a^2 + M * a^4) * r^4 -
                        (
                            M * a^8 - 4 * M^2 * a^6 * r - 4 * M^2 * a^4 * r^3 +
                            M * a^4 * r^4 +
                            2 * (2 * M^3 * a^4 + M * a^6) * r^2
                        ) * cos_theta^2
                    ) * sin_theta^4 -
                    (
                        a^4 * r^5 - 4 * M * a^2 * r^6 - 4 * M * r^8 +
                        r^9 +
                        2 * (2 * M^2 + a^2) * r^7 +
                        (
                            a^8 * r - 4 * M * a^6 * r^2 - 4 * M * a^4 * r^4 +
                            a^4 * r^5 +
                            2 * (2 * M^2 * a^4 + a^6) * r^3
                        ) * cos_theta^4 +
                        2 *
                        (
                            a^6 * r^3 - 4 * M * a^4 * r^4 - 4 * M * a^2 * r^6 +
                            a^2 * r^7 +
                            2 * (2 * M^2 * a^2 + a^4) * r^5
                        ) *
                        cos_theta^2
                    ) * sin_theta^2
                ) * v_phi^2 -
                (
                    a^2 * r^5 - M * r^6 +
                    (M * a^6 - a^6 * r) * cos_theta^6 +
                    (a^6 * r + M * a^4 * r^2 - 2 * a^4 * r^3) * cos_theta^4 +
                    (2 * a^4 * r^3 - M * a^2 * r^4 - a^2 * r^5) * cos_theta^2
                ) * v_r^2 -
                (
                    M * a^4 * r^2 - 4 * M^2 * a^2 * r^3 - 4 * M^2 * r^5 +
                    M * r^6 +
                    2 * (2 * M^3 + M * a^2) * r^4 -
                    (
                        M * a^6 - 4 * M^2 * a^4 * r - 4 * M^2 * a^2 * r^3 +
                        M * a^2 * r^4 +
                        2 * (2 * M^3 * a^2 + M * a^4) * r^2
                    ) * cos_theta^2
                ) * v_t^2 +
                (
                    a^4 * r^5 - 4 * M * a^2 * r^6 - 4 * M * r^8 +
                    r^9 +
                    2 * (2 * M^2 + a^2) * r^7 +
                    (
                        a^8 * r - 4 * M * a^6 * r^2 - 4 * M * a^4 * r^4 +
                        a^4 * r^5 +
                        2 * (2 * M^2 * a^4 + a^6) * r^3
                    ) * cos_theta^4 +
                    2 *
                    (
                        a^6 * r^3 - 4 * M * a^4 * r^4 - 4 * M * a^2 * r^6 +
                        a^2 * r^7 +
                        2 * (2 * M^2 * a^2 + a^4) * r^5
                    ) *
                    cos_theta^2
                ) * v_theta^2
            ) / (
                a^2 * r^6 - 2 * M * r^7 +
                r^8 +
                (a^8 - 2 * M * a^6 * r + a^6 * r^2) * cos_theta^6 +
                3 * (a^6 * r^2 - 2 * M * a^4 * r^3 + a^4 * r^4) * cos_theta^4 +
                3 * (a^4 * r^4 - 2 * M * a^2 * r^5 + a^2 * r^6) * cos_theta^2
            )
        out3 =
            -(
                4 *
                (
                    M * a^5 * r - 2 * M^2 * a^3 * r^2 + 2 * M * a^3 * r^3 -
                    2 * M^2 * a * r^4 + M * a * r^5
                ) *
                v_phi *
                v_t *
                cos_theta *
                sin_theta -
                2 *
                (M * a^4 * r - 2 * M^2 * a^2 * r^2 + M * a^2 * r^3) *
                v_t^2 *
                cos_theta *
                sin_theta -
                (
                    (
                        a^8 - 4 * M * a^6 * r - 4 * M * a^4 * r^3 +
                        a^4 * r^4 +
                        2 * (2 * M^2 * a^4 + a^6) * r^2
                    ) * cos_theta^5 +
                    2 *
                    (
                        a^6 * r^2 - 4 * M * a^4 * r^3 - 4 * M * a^2 * r^5 +
                        a^2 * r^6 +
                        2 * (2 * M^2 * a^2 + a^4) * r^4
                    ) *
                    cos_theta^3 +
                    (
                        2 * M * a^6 * r - 4 * M^2 * a^4 * r^2 +
                        6 * M * a^4 * r^3 +
                        2 * M * a^2 * r^5 +
                        2 * a^2 * r^6 - 2 * M * r^7 + r^8 - (8 * M^2 * a^2 - a^4) * r^4
                    ) * cos_theta
                ) *
                v_phi^2 *
                sin_theta +
                (a^6 * cos_theta^5 + 2 * a^4 * r^2 * cos_theta^3 + a^2 * r^4 * cos_theta) *
                v_r^2 *
                sin_theta -
                (
                    (a^8 - 2 * M * a^6 * r + a^6 * r^2) * cos_theta^5 +
                    2 * (a^6 * r^2 - 2 * M * a^4 * r^3 + a^4 * r^4) * cos_theta^3 +
                    (a^4 * r^4 - 2 * M * a^2 * r^5 + a^2 * r^6) * cos_theta
                ) *
                v_theta^2 *
                sin_theta +
                2 *
                (
                    a^2 * r^5 - 2 * M * r^6 +
                    r^7 +
                    (a^6 * r - 2 * M * a^4 * r^2 + a^4 * r^3) * cos_theta^4 +
                    2 * (a^4 * r^3 - 2 * M * a^2 * r^4 + a^2 * r^5) * cos_theta^2
                ) *
                v_r *
                v_theta
            ) / (
                a^2 * r^6 - 2 * M * r^7 +
                r^8 +
                (a^8 - 2 * M * a^6 * r + a^6 * r^2) * cos_theta^6 +
                3 * (a^6 * r^2 - 2 * M * a^4 * r^3 + a^4 * r^4) * cos_theta^4 +
                3 * (a^4 * r^4 - 2 * M * a^2 * r^5 + a^2 * r^6) * cos_theta^2
            )
        out4 =
            2 * (
                (
                    M * a^2 * r^2 + 2 * M * r^4 - r^5 + (M * a^4 - a^4 * r) * cos_theta^4 -
                    (M * a^4 - M * a^2 * r^2 + 2 * a^2 * r^3) * cos_theta^2
                ) *
                v_phi *
                v_r *
                sin_theta +
                (M * a^3 * cos_theta^2 - M * a * r^2) * v_r * v_t * sin_theta +
                (
                    2 * (M * a^3 * r - 2 * M^2 * a * r^2 + M * a * r^3) * v_t * cos_theta -
                    (
                        (a^6 - 2 * M * a^4 * r + a^4 * r^2) * cos_theta^5 -
                        2 *
                        (
                            M * a^4 * r + 3 * M * a^2 * r^3 - a^2 * r^4 -
                            (2 * M^2 * a^2 + a^4) * r^2
                        ) *
                        cos_theta^3 +
                        (
                            2 * M * a^4 * r - 4 * M^2 * a^2 * r^2 +
                            2 * M * a^2 * r^3 +
                            a^2 * r^4 - 2 * M * r^5 + r^6
                        ) * cos_theta
                    ) * v_phi
                ) * v_theta
            ) / (
                (
                    a^2 * r^4 - 2 * M * r^5 +
                    r^6 +
                    (a^6 - 2 * M * a^4 * r + a^4 * r^2) * cos_theta^4 +
                    2 * (a^4 * r^2 - 2 * M * a^2 * r^3 + a^2 * r^4) * cos_theta^2
                ) * sin_theta
            )

        (out1, out2, out3, out4)
    end
end

@inline function null_constrain(u, v, M, a)
    ComputedGeodesicEquations.@let_unpack u v begin
        cos_theta = cos(θ)
        sin_theta = sin(θ)
        Sigma = r^2 + a^2 * cos_theta^2
        Delta = r^2 - 2 * M * r + a^2

        (
            2 * (M * a^3 * r - 2 * M^2 * a * r^2 + M * a * r^3) * v_phi * sin_theta^2 -
            sqrt(
                (
                    2 *
                    (
                        M * a^6 * r^3 - 4 * M^2 * a^4 * r^4 - 4 * M^2 * a^2 * r^6 +
                        M * a^2 * r^7 +
                        2 * (2 * M^3 * a^2 + M * a^4) * r^5 +
                        (
                            M * a^8 * r - 4 * M^2 * a^6 * r^2 - 4 * M^2 * a^4 * r^4 +
                            M * a^4 * r^5 +
                            2 * (2 * M^3 * a^4 + M * a^6) * r^3
                        ) * cos_theta^2
                    ) *
                    sin_theta^4 -
                    (
                        2 * M * a^6 * r^3 + 6 * M * r^9 - r^10 - 3 * (4 * M^2 + a^2) * r^8 +
                        2 * (4 * M^3 + 7 * M * a^2) * r^7 -
                        (20 * M^2 * a^2 + 3 * a^4) * r^6 +
                        2 * (4 * M^3 * a^2 + 5 * M * a^4) * r^5 -
                        (8 * M^2 * a^4 + a^6) * r^4 -
                        (
                            a^10 - 4 * M * a^8 * r - 8 * M * a^6 * r^3 - 4 * M * a^4 * r^5 +
                            a^4 * r^6 +
                            (4 * M^2 * a^4 + 3 * a^6) * r^4 +
                            (4 * M^2 * a^6 + 3 * a^8) * r^2
                        ) * cos_theta^4 +
                        2 *
                        (
                            M * a^8 * r + 5 * M * a^2 * r^7 - a^2 * r^8 -
                            (8 * M^2 * a^2 + 3 * a^4) * r^6 +
                            (4 * M^3 * a^2 + 11 * M * a^4) * r^5 -
                            3 * (4 * M^2 * a^4 + a^6) * r^4 +
                            (4 * M^3 * a^4 + 7 * M * a^6) * r^3 -
                            (4 * M^2 * a^6 + a^8) * r^2
                        ) *
                        cos_theta^2
                    ) * sin_theta^2
                ) * v_phi^2 -
                (
                    2 * M * a^2 * r^5 + 4 * M * r^7 - r^8 - (4 * M^2 + a^2) * r^6 -
                    (a^8 - 2 * M * a^6 * r + a^6 * r^2) * cos_theta^6 +
                    (
                        2 * M * a^6 * r + 8 * M * a^4 * r^3 - 3 * a^4 * r^4 -
                        (4 * M^2 * a^4 + 3 * a^6) * r^2
                    ) * cos_theta^4 +
                    (
                        4 * M * a^4 * r^3 + 10 * M * a^2 * r^5 - 3 * a^2 * r^6 -
                        (8 * M^2 * a^2 + 3 * a^4) * r^4
                    ) * cos_theta^2
                ) * v_r^2 -
                (
                    2 * M * a^4 * r^5 + 6 * M * r^9 - r^10 - 2 * (6 * M^2 + a^2) * r^8 +
                    8 * (M^3 + M * a^2) * r^7 - (8 * M^2 * a^2 + a^4) * r^6 -
                    (
                        a^10 - 4 * M * a^8 * r - 4 * M * a^6 * r^3 +
                        a^6 * r^4 +
                        2 * (2 * M^2 * a^6 + a^8) * r^2
                    ) * cos_theta^6 +
                    (
                        2 * M * a^8 * r + 14 * M * a^4 * r^5 - 3 * a^4 * r^6 -
                        2 * (10 * M^2 * a^4 + 3 * a^6) * r^4 +
                        8 * (M^3 * a^4 + 2 * M * a^6) * r^3 -
                        (8 * M^2 * a^6 + 3 * a^8) * r^2
                    ) * cos_theta^4 +
                    (
                        4 * M * a^6 * r^3 + 16 * M * a^2 * r^7 - 3 * a^2 * r^8 -
                        2 * (14 * M^2 * a^2 + 3 * a^4) * r^6 +
                        4 * (4 * M^3 * a^2 + 5 * M * a^4) * r^5 -
                        (16 * M^2 * a^4 + 3 * a^6) * r^4
                    ) * cos_theta^2
                ) * v_theta^2,
            )
        ) / (
            2 * M * a^2 * r + 4 * M * r^3 - r^4 - (4 * M^2 + a^2) * r^2 -
            (a^4 - 2 * M * a^2 * r + a^2 * r^2) * cos_theta^2
        )
    end
end

end # module

@with_kw struct BoyerLindquist{T}
    @deftype T
    "Black Hole Mass."
    M = 1.0
    "Black Hole Spin."
    a = 0.0
end

geodesic_eq(u, v, m::BoyerLindquist) = BoyerLindquistCoords.geodesic_eq(u, v, m.M, m.a)
null_constrain(u, v, m::BoyerLindquist) =
    BoyerLindquistCoords.null_constrain(u, v, m.M, m.a)

export BoyerLindquistCoords, BoyerLindquist
