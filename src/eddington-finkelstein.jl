"""

Automatically generated from SageMath calculations

Fergus Baker - 9th Nov 2021

"""
module EddingtonFinkelsteinCoords

using ..ComputedGeodesicEquations

@inline function geodesic_eq(u, v, M)
    ComputedGeodesicEquations.@let_unpack u v begin
        cos_theta = cos(θ)
        sin_theta = sin(θ)

        out1 =
            2 * (
                M * r^3 * v_phi^2 * sin_theta^2 + M * r^3 * v_theta^2 - M^2 * v_t^2 -
                (M^2 + M * r) * v_r^2 - (2 * M^2 + M * r) * v_r * v_t
            ) / r^3
        out2 =
            -(
                (2 * M * r^3 - r^4) * v_phi^2 * sin_theta^2 - 4 * M^2 * v_r * v_t -
                (2 * M^2 + M * r) * v_r^2 - (2 * M^2 - M * r) * v_t^2 +
                (2 * M * r^3 - r^4) * v_theta^2
            ) / r^3
        out3 = (r * v_phi^2 * cos_theta * sin_theta - 2 * v_r * v_theta) / r
        out4 =
            -2 * (r * v_phi * v_theta * cos_theta + v_phi * v_r * sin_theta) /
            (r * sin_theta)

        (out1, out2, out3, out4)
    end
end

@inline function constrain(μ, u, v, M)
    ComputedGeodesicEquations.@let_unpack u v begin
        cos_theta = cos(θ)
        sin_theta = sin(θ)

        -(
            2 * M * v_r - sqrt(
                -(2 * M * r^3 - r^4) * v_phi^2 * sin_theta^2 + 2 * M * μ^2 * r - μ^2 * r^2 +
                r^2 * v_r^2 - (2 * M * r^3 - r^4) * v_theta^2,
            )
        ) / (2 * M - r)
    end
end

end # module

@with_kw struct EddingtonFinkelstein{T} <: AbstractMetricParams{T}
    @deftype T
    M = 1.0
end

geodesic_eq(m::EddingtonFinkelstein, u, v) =
    EddingtonFinkelsteinCoords.geodesic_eq(u, v, m.M)
constrain(m::EddingtonFinkelstein{T}, u, v; μ::T = 0.0) where {T} =
    EddingtonFinkelsteinCoords.constrain(μ, u, v, m.M)

export EddingtonFinkelsteinCoords, EddingtonFinkelstein

# additional specializations
inner_radius(m::EddingtonFinkelstein{T}) where {T} = 2 * m.M
