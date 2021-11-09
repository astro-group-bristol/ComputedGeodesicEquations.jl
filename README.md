# ComputedGeodesicEquations

Pre-computed Julia functions for components of the geodesic equation in different commonly used spacetimes.

These include

### Kerr geometries

- Boyer-Lindquist Coordinates

### Schwarzschild geometries

- Eddington-Finkelstein Coordinates

Each spacetime is an exported module, defining three functions:

- acceleration components (out-of-place):
```jl
function geodesic_eq(u, v, args...)
    # ...
end
```

- acceleration components (in-place):
```jl
function geodesic_eq!(duv, u, v, args...)
    # ...
end
```

- time constraint equation (returns time component of a light-like vector)
```jl
function null_constrain(u, v, args...)
    # ...
end
```