module ComputedGeodesicEquations

using Parameters
using Tullio
import StaticArrays: @SMatrix, SMatrix, MArray
import GeodesicBase: AbstractMetricParams, geodesic_eq, constrain, on_chart, inner_radius, metric

"""
    let_unpack(u, v, expr)

Helper utility which unpacks a position four-vector `u` and a velocity four-vector `v` into
predefined symbols, via

```julia
t, r, θ, ϕ = u[1:4]
v_t, v_r, v_theta, v_phi = v[1:4]
```

Wraps `expr` in a `let` block, with these symbols defined locally.
"""
macro let_unpack(u, v, expr)
    quote
        @inbounds let t = $u[1],
            r = $u[2],
            theta = $u[3],
            phi = $u[4],
            v_t = $v[1],
            v_r = $v[2],
            v_theta = $v[3],
            v_phi = $v[4]

            $expr
        end
    end |> esc
end

@inline function christoffel_symbols(ginv, jac)
    # TODO: using heap allocations by default
    # can we somehow make this method stack allocated for 64 floats?
    Γ = zeros(MArray{Tuple{4,4,4},Float64})
    @tullio Γ[i, k, l] = 1 / 2 * ginv[i, m] * (jac[l][m, k] + jac[k][m, l] - jac[m][k, l])
    Γ
end

@inline function geodesic_eq_from_christoffel(Γ, v)
    # TODO: using heap allocations by default
    # can we somehow make this method stack allocated for 4 floats?
    δxδλ = zeros(MArray{Tuple{4},Float64})
    @tullio δxδλ[i] = -Γ[i, j, k] * v[j] * v[k]
    δxδλ
end

@inline function jac_geodesic_eq(m::AbstractMetricParams{T}, u, v) where {T}
    ginv = inverse_metric(m, u)
    jac = jacobian(m, u)
    Γ = christoffel_symbols(ginv, jac)
    geodesic_eq_from_christoffel(Γ, v)
end


include("boyer-lindquist.jl")
include("eddington-finkelstein.jl")
include("morris-thorne.jl")
include("johannsen-psaltis.jl")

export geodesic_eq, constrain, on_chart, inner_radius

end # module
