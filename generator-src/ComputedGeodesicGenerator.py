from sage.all import *
import itertools

def indexprod(n):
    return itertools.product(*[range(4) for _ in range(n)])

def __generate_geodesic_equations(g, vel):
    ginv = g.inverse()

    constrain_eq = 0

    for (i, j) in indexprod(2):
        constrain_eq += g[i,j] * vel[i] * vel[j]

    sols = (constrain_eq.expr()==0).solve(vel[0])

    cs = g.christoffel_symbols()

    geo_eq = [0, 0, 0, 0]

    for (i, j, k) in indexprod(3):
        geo_eq[i] += - cs[i,j,k] * vel[j] * vel[k]

    geo_eq = [simplify(i) for i in geo_eq]
    
    temp = sols[1]
    return simplify(temp), simplify(geo_eq)

def generate_geodesic_equations_spherical(g):
    vt, vr, vtheta, vphi = var("v_t, v_r, v_theta, v_phi")
    vel = [vt, vr, vtheta, vphi]
    return __generate_geodesic_equations(g, vel)

def generate_geodesic_equations_cartesian(g):
    vt, vx, vy, vz = var("v_t, v_x, v_y, v_z")
    vel = [vt, vx, vy, vz]
    return __generate_geodesic_equations(g, vel)

def cache_functions(string):
    output = string.replace(
        "cos(theta)", "cos_theta"
    ).replace(
        "sin(theta)", "sin_theta"
    )
    
    funcs = """cos_theta = cos(θ)
        sin_theta = sin(θ)
    """
    
    return funcs, output

def make_geodesic_julia_function(geodesic_eqs, *args):
    outputs = f"""out1 = {str(geodesic_eqs[0])}
        out2 = {str(geodesic_eqs[1])}
        out3 = {str(geodesic_eqs[2])}
        out4 = {str(geodesic_eqs[3])}
    """
    
    cached_funcs, cached_outputs = cache_functions(outputs)
    
    arguments = ", ".join((str(i) for i in ['u', 'v', *args]))
    
    func = f"""@inline function geodesic_eq({arguments})
    ComputedGeodesicEquations.@let_unpack u v begin
        {cached_funcs}
        {cached_outputs}
        (out1, out2, out3, out4)
    end
end
    """
    
    return func

def make_constraint_julia_function(constraint_eq, *args):
    expr = str(constraint_eq).split('==')[1]
    
    cached_funcs, cached_output = cache_functions(expr)
    
    arguments = ", ".join((str(i) for i in ['u', 'v', *args]))
    
    func = f"""@inline function null_constrain({arguments})
    ComputedGeodesicEquations.@let_unpack u v begin
        {cached_funcs}
        {cached_output}
    end
end
    """
    
    return func

def make_julia_module(name, constraint, geodesic_eq, **args):
    arg_names = list(args.keys())
    if len(arg_names) == 0:
        raise "Needs at least one argument."
    
    struct_fields = "\n    ".join([f"{f} = {float(v)}" for (f, v) in args.items()])
    
    struct_arguments = ", ".join([f"m.{i}" for i in arg_names])
    
    constraint_function = make_constraint_julia_function(constraint, *arg_names)
    geodesic_function = make_geodesic_julia_function(geodesic_eq, *arg_names)
    
    content = f"""\"\"\"

Automatically generated from SageMath calculations

Fergus Baker - 9th Nov 2021

\"\"\"
module {name}Coords

using ..ComputedGeodesicEquations

{geodesic_function}
{constraint_function}
end # module

@with_kw struct {name}{{T}}
    @deftype T
    {struct_fields}
end

geodesic_eq(u, v, m::{name}) = {name}Coords.geodesic_eq(u, v, {struct_arguments})
null_constrain(u, v, m::{name}) = {name}Coords.null_constrain(u, v, {struct_arguments})

export {name}Coords, {name}
    """
    
    return content
    
def make_julia_module_from_metric_spherical(name, metric, **args):
    constraint, geodesic_eq = generate_geodesic_equations_spherical(metric)
    return make_julia_module(name, constraint, geodesic_eq, **args)

def save_module(module, name):
    with open(name + ".jl", "w") as f:
        f.write(module)