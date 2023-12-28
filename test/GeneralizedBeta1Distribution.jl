using GeneralizedBeta1Distribution
using Distributions: mean, std, var, pdf, logpdf, cdf, quantile, Beta
using Distributions

@testset "GeneralizedBeta1Tests.jl" begin

    d = GeneralizedBeta1(1/2,1/2,1/2,2)
    @test cdf.(d, quantile.(d, 0.1:0.1:0.9)) ≈ 0.1:0.1:0.9

    d = GeneralizedBeta1(3/2,3/2,2,2)
    @test cdf.(d, quantile.(d, 0.1:0.1:0.9)) ≈ 0.1:0.1:0.9

    @test pdf(d, 0.5) ≈ exp(logpdf(d, 0.5))

    α = rand()
    β = rand()
    ds1 = GeneralizedBeta1(α,β,1,1) # should be the standard Beta(α,β)
    ds2 = Distributions.Beta(α,β) 
    @test pdf(ds1, 0.5) ≈ pdf(ds2, 0.5) 
    @test cdf(ds1, 0.5) ≈ cdf(ds2, 0.5) 

    @test var(d) ≈ std(d).^2

    @test length(rand(d, 4)) == 4

    r = rand()
    params(GeneralizedBeta1(2*r, r, 2, 2)) == (2*r, r, 2, 2)
    @test mean(ds1) ≈ mean(ds2) ≈ α/(α+β)
    @test var(ds1) ≈ var(ds2) ≈ (α*β)/((α+β)^2*(α+β+1))

    @test GeneralizedBeta1(1, 2, 2, 2) == GeneralizedBeta1(1.0, 2.0, 2.0, 2.0)
    @test GeneralizedBeta1(1, 2.0, 2, 2) == GeneralizedBeta1(1.0, 2.0, 2.0, 2.0)
    
end