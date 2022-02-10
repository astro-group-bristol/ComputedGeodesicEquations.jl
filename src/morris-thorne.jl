"""

Automatically generated from SageMath calculations

Fergus Baker - 9th Nov 2021
             - 10th Feb 2022: updated to include Jacobian method

"""
module MorrisThorneCoords

using ..ComputedGeodesicEquations

@inline function geodesic_eq(u, v, b)
    ComputedGeodesicEquations.@let_unpack u v begin
        cos_theta = cos(theta)
        sin_theta = sin(theta)

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
        cos_theta = cos(theta)
        sin_theta = sin(theta)

        sqrt(
            b^2 * v_phi^2 * sin_theta +
            r^2 * v_phi^2 * sin_theta +
            b^2 * v_theta^2 +
            r^2 * v_theta^2 - μ^2 + v_r^2,
        )
    end
end

@inline function jacobian(u, b)
    let t = u[1], r = u[2], theta = u[3], phi = u[4]
        cos_theta = cos(theta)
        sin_theta = sin(theta)

        comp1 = zeros(ComputedGeodesicEquations.SMatrix{4,4,Float64})
        comp2 = ComputedGeodesicEquations.@SMatrix [
            0 0 0 0
            0 0 0 0
            0 0 2*r 0
            0 0 0 2*r*sin_theta
        ]
        comp3 = ComputedGeodesicEquations.@SMatrix [
            0 0 0 0
            0 0 0 0
            0 0 0 0
            0 0 0 (b^2+r^2)*cos_theta
        ]
        comp4 = zeros(ComputedGeodesicEquations.SMatrix{4,4,Float64})
        (comp1, comp2, comp3, comp4)
    end
end

@inline function metric(u, b)
    let t = u[1], r = u[2], theta = u[3], phi = u[4]
        cos_theta = cos(theta)
        sin_theta = sin(theta)

        ComputedGeodesicEquations.@SMatrix [
            -1 0 0 0
            0 1 0 0
            0 0 b^2+r^2 0
            0 0 0 (b^2+r^2)*sin_theta
        ]
    end
end

@inline function inverse_metric(u, b)
    let t = u[1], r = u[2], theta = u[3], phi = u[4]
        cos_theta = cos(theta)
        sin_theta = sin(theta)

        ComputedGeodesicEquations.@SMatrix [
            -1 0 0 0
            0 1 0 0
            0 0 1/(b^2+r^2) 0
            0 0 0 1/((b^2+r^2)*sin_theta)
        ]
    end
end


end # module

@with_kw struct MorrisThorne{T} <: AbstractMetricParams{T}
    @deftype T
    b = 1.0
end

@with_kw struct MorrisThorneJac{T} <: AbstractMetricParams{T}
    @deftype T
    b = 1.0
end

geodesic_eq(m::MorrisThorne{T}, u, v) where {T} = MorrisThorneCoords.geodesic_eq(u, v, m.b)
geodesic_eq(m::MorrisThorneJac{T}, u, v) where {T} = jac_geodesic_eq(m, u, v)

constrain(m::MorrisThorne{T}, u, v; μ::T = 0.0) where {T} =
    MorrisThorneCoords.constrain(μ, u, v, m.b)

# specialisations
metric(m::MorrisThorne{T}, u) where {T} = MorrisThorneCoords.metric(u, m.b)
inverse_metric(m::MorrisThorne{T}, u) where {T} = MorrisThorneCoords.inverse_metric(u, m.b)
jacobian(m::MorrisThorne{T}, u) where {T} = MorrisThorneCoords.jacobian(u, m.b)
metric(m::MorrisThorneJac{T}, u) where {T} = MorrisThorneCoords.metric(u, m.b)
inverse_metric(m::MorrisThorneJac{T}, u) where {T} =
    MorrisThorneCoords.inverse_metric(u, m.b)
jacobian(m::MorrisThorneJac{T}, u) where {T} = MorrisThorneCoords.jacobian(u, m.b)

export MorrisThorneCoords, MorrisThorne, MorrisThorneJac
