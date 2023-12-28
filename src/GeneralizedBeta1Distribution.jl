module GeneralizedBeta1Distribution

import Base: rand
using Random
import Random: default_rng, rand!
import Statistics: mean, median, quantile, std, var
import StatsBase: mode, params, params!
using Distributions, SpecialFunctions


include("GeneralizedBeta1.jl")

export mean, median, quantile, std, var, mode, params, params!, rand, rand!
export pdf, cdf, logpdf, logcdf
export GeneralizedBeta1

end # End module
