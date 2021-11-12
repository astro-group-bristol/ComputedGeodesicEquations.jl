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
        Sigma = r^2 + a^2 * cos_theta^2
        Delta = r^2 - 2 * M * r + a^2

        out1 =
            2 * (
                2 * (M * Sigma * a^3 - M * Sigma * a * r^2) * v_phi * v_r * sin_theta^2 +
                (6 * M^2 * a^2 * r * sin_theta^2 - M * Sigma * a^2 - M * Sigma * r^2) *
                v_r *
                v_t -
                8 *
                (
                    M^2 * a^3 * r^2 * v_phi * cos_theta * sin_theta^3 -
                    2 * M^2 * a^2 * r^2 * v_t * cos_theta * sin_theta
                ) *
                v_theta
            ) / (
                2 * M * Sigma * a^2 * r + 2 * M * Sigma * r^3 - Sigma^2 * a^2 -
                Sigma^2 * r^2 -
                2 * (6 * M^2 * a^2 * r^2 + M * Sigma * a^2 * r) * sin_theta^2
            )

        out2 =
            -(
                4 * Delta * M * a * v_phi * v_t * sin_theta^2 - Delta * M * v_t^2 -
                (Delta * M * a^2 * sin_theta^4 + Delta * Sigma * r * sin_theta^2) * v_phi^2
            ) / Sigma^2

        out3 =
            -(
                8 * M * a * r * v_phi * v_t * cos_theta * sin_theta -
                (
                    4 * M * a^2 * r * cos_theta * sin_theta^3 +
                    (Sigma * a^2 + Sigma * r^2) * cos_theta * sin_theta
                ) * v_phi^2
            ) / Sigma^2

        out4 =
            -2 * (
                2 * M * Sigma * a * v_r * v_t * sin_theta -
                (
                    (6 * M^2 * a^2 * r + M * Sigma * a^2) * sin_theta^3 -
                    (2 * M * Sigma * r^2 - Sigma^2 * r) * sin_theta
                ) *
                v_phi *
                v_r -
                (
                    4 * (2 * M^2 * a * r^2 - M * Sigma * a * r) * v_t * cos_theta +
                    (
                        4 *
                        (2 * M^2 * a^2 * r^2 + M * Sigma * a^2 * r) *
                        cos_theta *
                        sin_theta^2 -
                        (
                            2 * M * Sigma * a^2 * r + 2 * M * Sigma * r^3 - Sigma^2 * a^2 -
                            Sigma^2 * r^2
                        ) * cos_theta
                    ) * v_phi
                ) * v_theta
            ) / (
                (
                    2 * M * Sigma * r^3 - Sigma^2 * a^2 - (12 * M^2 * a^2 + Sigma^2) * r^2 +
                    2 * (6 * M^2 * a^2 * r^2 + M * Sigma * a^2 * r) * cos_theta^2
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
            4 * Delta * M * a * r * v_phi * sin_theta^2 + sqrt(
                (
                    2 *
                    (6 * Delta^2 * M^2 * a^2 * r^2 + Delta^2 * M * Sigma * a^2 * r) *
                    sin_theta^4 -
                    (
                        2 * Delta^2 * M * Sigma * a^2 * r + 2 * Delta^2 * M * Sigma * r^3 -
                        Delta^2 * Sigma^2 * a^2 - Delta^2 * Sigma^2 * r^2
                    ) * sin_theta^2
                ) * v_phi^2 - (2 * Delta * M * Sigma^2 * r - Delta * Sigma^3) * v_r^2 -
                (2 * Delta^2 * M * Sigma^2 * r - Delta^2 * Sigma^3) * v_theta^2,
            )
        ) / (2 * Delta * M * r - Delta * Sigma)
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
geodesic_eq!(duv, u, v, m::BoyerLindquist) = BoyerLindquistCoords.geodesic_eq!(duv, u, v, m.M, m.a)
null_constrain(u, v, m::BoyerLindquist) = BoyerLindquistCoords.null_constrain(u, v, m.M, m.a)

export BoyerLindquistCoords, BoyerLindquist
