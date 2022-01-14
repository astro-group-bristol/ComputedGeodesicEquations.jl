"""

Automatically generated from SageMath calculations

Fergus Baker - 9th Nov 2021

"""
module MorrisThorneCoords

using ..ComputedGeodesicEquations

@inline function geodesic_eq(u, v, b)
    ComputedGeodesicEquations.@let_unpack u v begin
        cos_theta = cos(θ)
        sin_theta = sin(θ)

        out1 = 0
        out2 = r * v_phi^2 * sin_theta + r * v_theta^2
        out3 =
            1 / 2 * ((b^2 + r^2) * v_phi^2 * cos_theta - 4 * r * v_r * v_theta) /
            (b^2 + r^2)
        out4 =
            -((b^2 + r^2) * v_phi * v_theta * cos_theta + 2 * r * v_phi * v_r * sin_theta) /
            ((b^2 + r^2) * sin_theta)

        (out1, out2, out3, out4)
    end
end

@inline function constrain(μ, u, v, b)
    ComputedGeodesicEquations.@let_unpack u v begin
        cos_theta = cos(θ)
        sin_theta = sin(θ)

        sqrt(
            b^2 * v_phi^2 * sin_theta +
            r^2 * v_phi^2 * sin_theta +
            b^2 * v_theta^2 +
            r^2 * v_theta^2 - μ^2 + v_r^2,
        )
    end
end

end # module

@with_kw struct MorrisThorne{T} <: AbstractMetricParams{T}
    @deftype T
    b = 1.0
end

geodesic_eq(m::MorrisThorne, u, v) = MorrisThorneCoords.geodesic_eq(u, v, m.b)
constrain(m::MorrisThorne{T}, u, v; μ::T = 0.0) where {T} =
    MorrisThorneCoords.constrain(μ, u, v, m.b)

export MorrisThorneCoords, MorrisThorne
