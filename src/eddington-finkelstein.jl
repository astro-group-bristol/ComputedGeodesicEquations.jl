"""

Automatically generated from SageMath calculations

Fergus Baker - 9th Nov 2021
             - 10th Feb 2022: updated to include Jacobian method

"""
module EddingtonFinkelsteinCoords

using ..ComputedGeodesicEquations

@inline function geodesic_eq(u, v, M)
    @fastmath ComputedGeodesicEquations.@let_unpack u v begin
        cos_theta = cos(theta)
        sin_theta = sin(theta)

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
    @fastmath ComputedGeodesicEquations.@let_unpack u v begin
        cos_theta = cos(theta)
        sin_theta = sin(theta)

        -(
            2 * M * v_r - sqrt(
                -(2 * M * r^3 - r^4) * v_phi^2 * sin_theta^2 + 2 * M * μ^2 * r - μ^2 * r^2 +
                r^2 * v_r^2 - (2 * M * r^3 - r^4) * v_theta^2,
            )
        ) / (2 * M - r)
    end
end

@inline function jacobian(u, M)
    @fastmath let t = u[1], r = u[2], theta = u[3], phi = u[4]
        cos_theta = cos(theta)
        sin_theta = sin(theta)

        comp1 = zeros(ComputedGeodesicEquations.SMatrix{4,4,Float64})
        comp2 = ComputedGeodesicEquations.@SMatrix [
            -2*M/r^2 -2*M/r^2 0 0
            -2*M/r^2 -2*M/r^2 0 0
            0 0 2*r 0
            0 0 0 2*r*sin_theta^2
        ]
        comp3 = ComputedGeodesicEquations.@SMatrix [
            0 0 0 0
            0 0 0 0
            0 0 0 0
            0 0 0 2*r^2*cos_theta*sin_theta
        ]
        comp4 = zeros(ComputedGeodesicEquations.SMatrix{4,4,Float64})
        (comp1, comp2, comp3, comp4)
    end
end

@inline function metric(u, M)
    @fastmath let t = u[1], r = u[2], theta = u[3], phi = u[4]
        cos_theta = cos(theta)
        sin_theta = sin(theta)

        ComputedGeodesicEquations.@SMatrix [
            2*M/r-1 2*M/r 0 0
            2*M/r 2*M/r+1 0 0
            0 0 r^2 0
            0 0 0 r^2*sin_theta^2
        ]
    end
end

@inline function inverse_metric(u, M)
    let t = u[1], r = u[2], theta = u[3], phi = u[4]
        cos_theta = cos(theta)
        sin_theta = sin(theta)

        ComputedGeodesicEquations.@SMatrix [
            -(2 * M + r)/r 2*M/r 0 0
            2*M/r -(2 * M - r)/r 0 0
            0 0 r^(-2) 0
            0 0 0 1/(r^2*sin_theta^2)
        ]
    end
end


end # module

@with_kw struct EddingtonFinkelstein{T} <: AbstractMetricParams{T}
    @deftype T
    M = 1.0
end

@with_kw struct EddingtonFinkelsteinJac{T} <: AbstractMetricParams{T}
    @deftype T
    M = 1.0
end

geodesic_eq(m::EddingtonFinkelstein{T}, u, v) where {T} =
    EddingtonFinkelsteinCoords.geodesic_eq(u, v, m.M)
geodesic_eq(m::EddingtonFinkelsteinJac{T}, u, v) where {T} = jac_geodesic_eq(m, u, v)

constrain(m::EddingtonFinkelstein{T}, u, v; μ::T = 0.0) where {T} =
    EddingtonFinkelsteinCoords.constrain(μ, u, v, m.M)

# specialisations
metric(m::EddingtonFinkelstein{T}, u) where {T} = EddingtonFinkelsteinCoords.metric(u, m.M)
inverse_metric(m::EddingtonFinkelstein{T}, u) where {T} =
    EddingtonFinkelsteinCoords.inverse_metric(u, m.M)
jacobian(m::EddingtonFinkelstein{T}, u) where {T} =
    EddingtonFinkelsteinCoords.jacobian(u, m.M)
metric(m::EddingtonFinkelsteinJac{T}, u) where {T} =
    EddingtonFinkelsteinCoords.metric(u, m.M)
inverse_metric(m::EddingtonFinkelsteinJac{T}, u) where {T} =
    EddingtonFinkelsteinCoords.inverse_metric(u, m.M)
jacobian(m::EddingtonFinkelsteinJac{T}, u) where {T} =
    EddingtonFinkelsteinCoords.jacobian(u, m.M)

export EddingtonFinkelsteinCoords, EddingtonFinkelstein, EddingtonFinkelsteinJac

# additional specializations
inner_radius(m::EddingtonFinkelstein{T}) where {T} = 2 * m.M
inner_radius(m::EddingtonFinkelsteinJac{T}) where {T} = 2 * m.M
