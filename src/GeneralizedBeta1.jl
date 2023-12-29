import Distributions: logpdf, pdf, cdf, quantile, std, mean, skewness, @check_args, @distr_support
import Base.rand
import Base.length

""" 
    GeneralizedBeta1(α, β, γ, δ) 

The Generalized Beta distribution of the first kind GB1 is a four-parameter extension of standard Beta(α, β) distribution.

If Y ∼ Beta(α, β), then X = δ⋅Y^(1/γ) ∼ GeneralizedBeta1(α, β, γ, δ).

The density function is given by

```math
f(x) = \\frac{|γ|}{\\delta^{\\alpha\\gamma}\\mathrm{B}(\\alpha,\\beta)} 
       x^{\\alpha\\gamma - 1}(1 - (x/ \\delta)^ \\gamma)^{\\beta - 1}, \\quad 0 < x < 1
```


```julia
d = GeneralizedBeta1(2, 3, 1.5, 1)   

rand(d, 10)        # Ten random number from the distribution
params(d)          # Get the parameters, i.e. α, β, γ and δ
pdf(d, 0.5)        # Probability density function at x = 0.5
cdf(d, 0.5)        # Cumulative distribution function P(X <= x) at x = 0.5
quantile(d, 0.5)   # Median
mean(d)            # Mean 
var(d)             # Variance 
```

External links

* [Generalized Beta distribution of the first kind GB1 on Wikipedia](https://en.wikipedia.org/wiki/Generalized_beta_distribution#Generalized_beta_of_first_kind_(GB1))

# Examples
```julia-repl
julia> d = GeneralizedBeta1(2, 3, 1.5, 1)
julia> rand(d, 4)'
1×4 adjoint(::Vector{Float64}) with eltype Float64:
 1.00851  0.640297  0.566234  2.16941
julia> pdf(d, 0.5)
julia> cdf(d, 0.5)
```
""" 
struct GeneralizedBeta1{T<:Real} <: ContinuousUnivariateDistribution
    α::T
    β::T
    γ::T
    δ::T
    GeneralizedBeta1{T}(α::T, β::T, γ::T, δ::T) where {T} = new{T}(α, β, γ, δ)
end

function GeneralizedBeta1(α::T, β::T, γ::T, δ::T; check_args::Bool=true) where {T <: Real}
    @check_args GeneralizedBeta1 (α, α > zero(α)) (β, β > zero(β)) (δ, δ > zero(δ))
    return GeneralizedBeta1{T}(α, β, γ, δ)
end

GeneralizedBeta1(α::Real, β::Real, γ::Real, δ::Real; check_args::Bool=true) =           
    GeneralizedBeta1(promote(α, β, γ, δ)...; check_args = check_args)
GeneralizedBeta1(α::Integer, β::Integer, γ::Integer, δ::Integer; check_args::Bool=true) = 
    GeneralizedBeta1(float(α), float(β), float(γ), float(δ); check_args = check_args)

Base.eltype(::Type{GeneralizedBeta1{T}}) where {T} = T

#### Conversions
convert(::Type{GeneralizedBeta1{T}}, α::S, β::S, γ::S, δ::S) where {T <: Real, S <: Real} = 
GeneralizedBeta1(T(α), T(β), T(γ), T(δ))
Base.convert(::Type{GeneralizedBeta1{T}}, d::GeneralizedBeta1) where {T<:Real} = 
GeneralizedBeta1{T}(T(d.α), T(d.β), T(d.γ), T(d.δ))
Base.convert(::Type{GeneralizedBeta1{T}}, d::GeneralizedBeta1{T}) where {T<:Real} = d

#### Parameters
params(d::GeneralizedBeta1) = (d.α, d.β, d.γ, d.δ)
partype(::GeneralizedBeta1{T}) where {T} = T

""" 
    rand(d::GeneralizedBeta1[, n::Integer])

Draw `n` random numbers from the GeneralizedBeta1 distribution `d`. 
""" 
function Base.rand(rng::Random.AbstractRNG, d::GeneralizedBeta1)
    y = rand(rng, Beta(d.α, d.β))
    return d.δ*y^(1/d.γ)
end

""" 
    pdf(d::GeneralizedBeta1, x::Real) 

Compute the pdf of the GeneralizedBeta1 distribution `d` at `x`. 
""" 
pdf(d::GeneralizedBeta1, x::Real) = ( abs(d.γ)/(d.δ^(d.α*d.γ)*beta(d.α,d.β)) )*x^(d.α*d.γ - 1)*(1 - (x/d.δ)^d.γ)^(d.β - 1)


""" 
    logpdf(d::GeneralizedBeta1, x::Real) 

Compute the logpdf of the GeneralizedBeta1 distribution `d` at `x`. 
""" 
logpdf(d::GeneralizedBeta1, x::Real) = log(abs(d.γ))-(d.α*d.γ)*log(d.δ) - 
    logbeta(d.α, d.β) + (d.α*d.γ - 1)*log(x) + (d.β - 1)*log(1 - (x/d.δ)^d.γ)


""" 
    cdf(d::GeneralizedBeta1, x::Real) 

Compute the cdf of the GeneralizedBeta1 `d` at `x`. 
""" 
cdf(d::GeneralizedBeta1, x::Real) = d.γ > 0 ? beta_inc(d.α, d.β, (x/d.δ)^d.γ)[1] : 1 - beta_inc(d.α, d.β, (d.δ/x)^abs(d.γ))[1]


""" 
quantile(d::GeneralizedBeta1, p::Real) 

Compute the `p`-quantile of the GeneralizedBeta1 distribution `d`. 
""" 
quantile(d::GeneralizedBeta1, p::Real) = d.δ * quantile(Beta(d.α, d.β), p)^(1/d.γ)

""" 
mean(d::GeneralizedBeta1) 

Compute the mean of the GeneralizedBeta1 distribution `d`. 
""" 
mean(d::GeneralizedBeta1) = d.α+1/d.γ>0 ? d.δ*(beta(d.α + 1/d.γ, d.β)/beta(d.α, d.β)) : NaN


""" 
var(d::GeneralizedBeta1) 

Compute the variance of the GeneralizedBeta1 distribution `d`. 
""" 
var(d::GeneralizedBeta1) = d.α+2/d.γ>0 ? (d.δ^2) * (beta(d.α + 2/d.γ, d.β) / beta(d.α, d.β)) - mean(d)^2 : NaN


""" 
    std(d::GeneralizedBeta1) 
    
Compute the standard deviation of the GeneralizedBeta1 distribution `d`. 
""" 
std(d::GeneralizedBeta1) = sqrt(var(d))

