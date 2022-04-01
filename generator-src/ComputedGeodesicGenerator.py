from sage.all import *
import itertools

def indexprod(n):
    return itertools.product(*[range(4) for _ in range(n)])

def __generate_geodesic_equations(g, vel):
    mu = var("mu")
    constrain_eq = 0

    for (i, j) in indexprod(2):
        constrain_eq += g[i,j] * vel[i] * vel[j]

    sols = (constrain_eq.expr()==-mu**2).solve(vel[0])

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

def generate_jacobian_dict(g, coords):
    jacobian_dict = {}
    for symb in coords:
        derivs = []
        for i in range(4):
            for j in range(4):
                # simplify can't hurt i guess
                derivs.append(simplify(g[i, j].diff(symb)))
        # use matrix constructor to get "pretty print"
        jacobian_dict[symb] = matrix(derivs, nrows=4, ncols=4)
    return jacobian_dict

def generate_jacobian_functions(g, coords):
    ginv = g.inverse()
    jacobian_dict = generate_jacobian_dict(g, coords)
    return ginv, jacobian_dict

def cache_functions(string):
    output = string.replace(
        "cos(theta)", "cos_theta"
    ).replace(
        "sin(theta)", "sin_theta"
    )
    
    funcs = """cos_theta = cos(theta)
        sin_theta = sin(theta)
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
    @fastmath ComputedGeodesicEquations.@let_unpack u v begin
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
    cached_output = cached_output.replace("mu", "μ")
    
    arguments = ", ".join((str(i) for i in ['μ', 'u', 'v', *args]))
    
    func = f"""@inline function constrain({arguments})
    @fastmath ComputedGeodesicEquations.@let_unpack u v begin
        {cached_funcs}
        {cached_output}
    end
end
    """
    
    return func

def to_julia_matrix(m):
    # since always assume 4x4 matrix
    # rewrite into Julia matrix notation
    m = m.replace("]", ";", 3)
    m = "[" + m.replace("[", "")
    return m


def make_metric_julia_function(g, name, *args):
    # get "pretty print" string
    s = str(g[:])
    s = to_julia_matrix(s)

    cached_funcs, cached_output = cache_functions(s)

    arguments = ", ".join((str(i) for i in ['u', *args]))

    func = f"""@inline function {name}({arguments})
    @fastmath let t = u[1], r = u[2], theta = u[3], phi = u[4] 
        {cached_funcs}
        ComputedGeodesicEquations.@SMatrix {cached_output}
    end
end 
    """
    return func

def make_jacobian_julia_function(jac, *args):
    matrix_strings = [to_julia_matrix(str(v)) for (_, v) in jac.items()]

    components = "\n".join(
        [
            (f"comp{i+1} = ComputedGeodesicEquations.@SMatrix {matrix_strings[i]}" 
            if matrix_strings[i] != 0 else 
            f"comp{i+1} = zeros(ComputedGeodesicEquations.SMatrix{{4,4,Float64}})")
            for i in range(4)
        ]
    )

    arguments = ", ".join((str(i) for i in ['u', *args]))
    
    cached_funcs, cached_output = cache_functions(components)

    func = f"""@inline function jacobian({arguments})
    @fastmath let t = u[1], r = u[2], theta = u[3], phi = u[4]
        {cached_funcs}
        {cached_output}
        (comp1, comp2, comp3, comp4)
    end
end
    """
    
    return func

def make_julia_module(name, constraint, geodesic_eq, g, ginv, jac, **args):
    arg_names = list(args.keys())
    if len(arg_names) == 0:
        raise "Needs at least one argument."
    
    struct_fields = "\n    ".join([f"{f} = {float(v)}" for (f, v) in args.items()])
    
    struct_arguments = ", ".join([f"m.{i}" for i in arg_names])
    
    constraint_function = make_constraint_julia_function(constraint, *arg_names)
    geodesic_function = make_geodesic_julia_function(geodesic_eq, *arg_names)
    g_function = make_metric_julia_function(g, "metric", *arg_names)
    ginv_function = make_metric_julia_function(ginv, "inverse_metric", *arg_names)
    jacobian_function = make_jacobian_julia_function(jac, *arg_names)
    
    content = f"""\"\"\"

Automatically generated from SageMath calculations

Fergus Baker - 9th Nov 2021
             - 10th Feb 2022: updated to include Jacobian method
             - 1st Apr 2022: fix sign error in mu
\"\"\"
module {name}Coords

using ..ComputedGeodesicEquations

{geodesic_function}
{constraint_function}
{jacobian_function}
{g_function}
{ginv_function}

end # module

@with_kw struct {name}{{T}} <: AbstractMetricParams{{T}}
    @deftype T
    {struct_fields}
end

@with_kw struct {name}Jac{{T}} <: AbstractMetricParams{{T}}
    @deftype T
    {struct_fields}
end

geodesic_eq(m::{name}{{T}}, u, v) where {{T}} = {name}Coords.geodesic_eq(u, v, {struct_arguments})
geodesic_eq(m::{name}Jac{{T}}, u, v) where {{T}} = jac_geodesic_eq(m, u, v)

constrain(m::{name}{{T}}, u, v; μ::T=0.0) where {{T}} = {name}Coords.constrain(μ, u, v, {struct_arguments})
constrain(m::{name}Jac{{T}}, u, v; μ::T=0.0) where {{T}} = {name}Coords.constrain(μ, u, v, {struct_arguments})

# specialisations
metric(m::{name}{{T}}, u) where {{T}} = {name}Coords.metric(u, {struct_arguments})
inverse_metric(m::{name}{{T}}, u) where {{T}} = {name}Coords.inverse_metric(u, {struct_arguments})
jacobian(m::{name}{{T}}, u) where {{T}} = {name}Coords.jacobian(u, {struct_arguments})
metric(m::{name}Jac{{T}}, u) where {{T}} = {name}Coords.metric(u, {struct_arguments})
inverse_metric(m::{name}Jac{{T}}, u) where {{T}} = {name}Coords.inverse_metric(u, {struct_arguments})
jacobian(m::{name}Jac{{T}}, u) where {{T}} = {name}Coords.jacobian(u, {struct_arguments})

export {name}Coords, {name}, {name}Jac
    """
    
    return content
    
def make_julia_module_from_metric_spherical(name, coords, metric, **args):
    constraint, geodesic_eq = generate_geodesic_equations_spherical(metric)
    ginv, jac = generate_jacobian_functions(metric, coords)
    return make_julia_module(name, constraint, geodesic_eq, metric, ginv, jac, **args)

def save_module(module, name):
    with open(name + ".jl", "w") as f:
        f.write(module)