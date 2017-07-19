ti = time()


# System Evolution:
include(joinpath("systems", "discrete_systems.jl"))
include(joinpath("systems", "continuous_systems.jl"))
# lyapunov Exponents:
include(joinpath("lyapunovs", "discrete_lyapunov.jl"))
include(joinpath("lyapunovs", "continuous_lyapunov.jl"))
# Entropies (and attractor dimensions)
include("entropy_dimension.jl")


ti = time() - ti
println("Test took total time of:")
println(round(ti, 3), " seconds or ", round(ti/60, 3), " minutes")
