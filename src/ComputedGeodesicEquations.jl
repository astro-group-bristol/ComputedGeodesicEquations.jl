module ComputedGeodesicEquations

using Parameters

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
            θ = $u[3],
            ϕ = $u[4],
            v_t = $v[1],
            v_r = $v[2],
            v_theta = $v[3],
            v_phi = $v[4]

            $expr
        end
    end |> esc
end

include("boyer-lindquist.jl")
include("eddington-finkelstein.jl")
include("morris-thorne.jl")

"""
    geodesic_eq!(duv, u, v, m)

In-place variant of [`geodesic_eq`](@ref).
"""
geodesic_eq!(duv, u, v, m) = duv .= geodesic_eq(u, v, m)

"""
    geodesic_eq(u, v, m)

Calculate the acceleration components of the geodesic equation given a position `u`,
a velocity `v`, and a metric `m`.
"""
geodesic_eq(u, v, m) = error("Not implemented for $m.")

"""
    null_constrain(u, v, m)

Returns the time component of a velocity vector `v`, for some position `u` and metric `m`, which would
ensure the velocity vector corresponds to a null-geodesic.
"""
null_constrain(u, v, m) = error("Not implemented for $m.")

"""
    R₀(m)

Returns the minimal chart radius, contextual to the space time. For example, for black hole metrics, returns the
event horizon radius.
"""
R₀(m) = error("Not implemented for $m.")

export geodesic_eq, geodesic_eq!, null_constrain, R₀

end # module
