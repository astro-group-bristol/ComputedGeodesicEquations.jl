from sage.all import *
from ComputedGeodesicGenerator import make_julia_module_from_metric_spherical, save_module

def generate_morris_thorne():
    name = "MorrisThorne"

    KM = Manifold(4, 'M', latex_name=r'\mathcal{M}', start_index=0)  
    chart = KM.chart(names=('t', 'r', 'theta', 'phi',))
    (t, r, theta, phi,) = chart._first_ngens(4)

    ## METRIC SPECIFICATION
    b = var("b")

    g = KM.lorentzian_metric('g')

    g[0, 0] = -1
    g[1, 1] = 1
    g[2, 2] = (b**2 + r**2)
    g[3, 3] = (b**2 + r**2) * sin(theta)

    module = make_julia_module_from_metric_spherical(name, g, b=1.0)

    module += f"""
# additional specializations
R₀(m::{name}) = 0.0
    """
    
    save_module(module, "morris-thorne")

def generate_eddington_finkelstein():
    name = "EddingtonFinkelstein"

    KM = Manifold(4, 'M', latex_name=r'\mathcal{M}', start_index=0)  
    chart = KM.chart(names=('t', 'r', 'theta', 'phi',))
    (t, r, theta, phi,) = chart._first_ngens(4)

    ## METRIC SPECIFICATION
    M = var("M")

    g = KM.lorentzian_metric('g')
    g[0, 0] = -(1 - 2 * M / r)
    g[1, 1] = 1 + 2 * M / r
    g[2, 2] = r**2
    g[3, 3] = (r * sin(theta))**2

    g[0, 1] = 2 * M / r

    module = make_julia_module_from_metric_spherical(name, g, M=1.0)

    module += f"""
# additional specializations
R₀(m::{name}) = 2*m.M
    """
    
    save_module(module, "eddington-finkelstein")


def generate_boyer_lindquist():
    name = "BoyerLindquist"

    KM = Manifold(4, 'M', latex_name=r'\mathcal{M}', start_index=0)  
    chart = KM.chart(names=('t', 'r', 'theta', 'phi',))
    (t, r, theta, phi,) = chart._first_ngens(4)

    ## METRIC SPECIFICATION
    a = var("a")
    M = var("M")
    R = 2*M

    Sigma = r**2 + a**2 * cos(theta)**2
    Delta = r**2 - 2*M*r + a**2

    g = KM.lorentzian_metric('g')
    g[0,0] = - (1 - (R*r)/Sigma)
    g[1,1] = Sigma / Delta
    g[2,2] = Sigma
    g[3,3] = sin(theta)**2 * (r**2 + a**2 + (sin(theta)**2 * R * r * a**2)/Sigma)

    g[0,3] = -(R * r * a * sin(theta)**2) / Sigma

    module = make_julia_module_from_metric_spherical(name, g, M=1.0, a=0.0)

    module += f"""
# additional specializations
R₀(m::{name}) = m.M + √(m.M^2 - m.a^2)
    """
    
    save_module(module, "boyer-lindquist")


def generate_all():
    generate_boyer_lindquist()
    generate_eddington_finkelstein()


if __name__ == "__main__":
    generate_all()