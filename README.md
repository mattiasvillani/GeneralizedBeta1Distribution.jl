# GeneralizedBeta1Distribution



[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://mattiasvillani.github.io/GeneralizedBeta1Distribution.jl/stable/)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://mattiasvillani.github.io/GeneralizedBeta1Distribution.jl/dev/)
[![Build Status](https://github.com/mattiasvillani/GeneralizedBeta1Distribution.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/mattiasvillani/GeneralizedBeta1Distribution.jl/actions/workflows/CI.yml?query=branch%3Amain)
[![Coverage](https://codecov.io/gh/mattiasvillani/GeneralizedBeta1Distribution.jl/branch/main/graph/badge.svg)](https://codecov.io/gh/mattiasvillani/GeneralizedBeta1Distribution.jl)

## Description

Julia implementation of the [Generalized Beta1 distribution (GB1)](https://en.wikipedia.org/wiki/Generalized_logistic_distribution#Type_IV).<br>If `Y ~ Beta(α,β)` then `X = δ*Y^(1/γ)` follows `X ~ GeneralizedBeta1(α,β,γ,δ)`.<br>The implementation follows the Distributions.jl interface.

## Installation
Install from the Julia package manager (via Github) by typing `]` in the Julia REPL:
```
] add git@github.com:mattiasvillani/GeneralizedBeta1Distribution.jl.git
```

## Example
```julia
using GeneralizedBeta1Distribution
d = GeneralizedBeta1(1/2, 1/2, 2, 1)
mean(d)    
rand(d, 10)                                 # 10 random draws
pdf(d, 0.5)                                 # pdf at 0.5
cdf(d, 0.5)                                 # cdf at 0.5
```