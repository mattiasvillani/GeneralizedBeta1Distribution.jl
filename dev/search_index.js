var documenterSearchIndex = {"docs":
[{"location":"home/","page":"Home","title":"Home","text":"CurrentModule = GeneralizedBeta1Distribution","category":"page"},{"location":"home/#GeneralizedBeta1Distribution","page":"Home","title":"GeneralizedBeta1Distribution","text":"","category":"section"},{"location":"home/","page":"Home","title":"Home","text":"Documentation for GeneralizedBeta1Distribution.","category":"page"},{"location":"home/","page":"Home","title":"Home","text":"Modules = [GeneralizedBeta1Distribution]","category":"page"},{"location":"home/#GeneralizedBeta1Distribution.GeneralizedBeta1","page":"Home","title":"GeneralizedBeta1Distribution.GeneralizedBeta1","text":"GeneralizedBeta1(α, β, γ, δ)\n\nThe Generalized Beta distribution of the first kind GB1 is a four-parameter extension of standard Beta(α, β) distribution.\n\nIf Y ∼ Beta(α, β), then X = δ⋅Y^(1/γ) ∼ GeneralizedBeta1(α, β, γ, δ).\n\nThe density function is given by\n\nf(x) = fracγdelta^alphagammamathrmB(alphabeta) \n       x^alphagamma - 1(1 - (x delta)^ gamma)^beta - 1 quad 0  x  1\n\nd = GeneralizedBeta1(2, 3, 1.5, 1)   \n\nrand(d, 10)        # Ten random number from the distribution\nparams(d)          # Get the parameters, i.e. α, β, γ and δ\npdf(d, 0.5)        # Probability density function at x = 0.5\ncdf(d, 0.5)        # Cumulative distribution function P(X <= x) at x = 0.5\nquantile(d, 0.5)   # Median\nmean(d)            # Mean \nvar(d)             # Variance \n\nExternal links\n\nGeneralized Beta distribution of the first kind GB1 on Wikipedia\n\nExamples\n\njulia> d = GeneralizedBeta1(2, 3, 1.5, 1)\njulia> rand(d, 4)'\n1×4 adjoint(::Vector{Float64}) with eltype Float64:\n 1.00851  0.640297  0.566234  2.16941\njulia> pdf(d, 0.5)\njulia> cdf(d, 0.5)\n\n\n\n\n\n","category":"type"},{"location":"home/#Base.rand-Tuple{Random.AbstractRNG, GeneralizedBeta1}","page":"Home","title":"Base.rand","text":"rand(d::GeneralizedBeta1[, n::Integer])\n\nDraw n random numbers from the GeneralizedBeta1 distribution d. \n\n\n\n\n\n","category":"method"},{"location":"home/#Distributions.cdf-Tuple{GeneralizedBeta1, Real}","page":"Home","title":"Distributions.cdf","text":"cdf(d::GeneralizedBeta1, x::Real)\n\nCompute the cdf of the GeneralizedBeta1 d at x. \n\n\n\n\n\n","category":"method"},{"location":"home/#Distributions.logpdf-Tuple{GeneralizedBeta1, Real}","page":"Home","title":"Distributions.logpdf","text":"logpdf(d::GeneralizedBeta1, x::Real)\n\nCompute the logpdf of the GeneralizedBeta1 distribution d at x. \n\n\n\n\n\n","category":"method"},{"location":"home/#Distributions.pdf-Tuple{GeneralizedBeta1, Real}","page":"Home","title":"Distributions.pdf","text":"pdf(d::GeneralizedBeta1, x::Real)\n\nCompute the pdf of the GeneralizedBeta1 distribution d at x. \n\n\n\n\n\n","category":"method"},{"location":"home/#Statistics.mean-Tuple{GeneralizedBeta1}","page":"Home","title":"Statistics.mean","text":"mean(d::GeneralizedBeta1) \n\nCompute the mean of the GeneralizedBeta1 distribution d. \n\n\n\n\n\n","category":"method"},{"location":"home/#Statistics.quantile-Tuple{GeneralizedBeta1, Real}","page":"Home","title":"Statistics.quantile","text":"quantile(d::GeneralizedBeta1, p::Real) \n\nCompute the p-quantile of the GeneralizedBeta1 distribution d. \n\n\n\n\n\n","category":"method"},{"location":"home/#Statistics.std-Tuple{GeneralizedBeta1}","page":"Home","title":"Statistics.std","text":"std(d::GeneralizedBeta1)\n\nCompute the standard deviation of the GeneralizedBeta1 distribution d. \n\n\n\n\n\n","category":"method"},{"location":"home/#Statistics.var-Tuple{GeneralizedBeta1}","page":"Home","title":"Statistics.var","text":"var(d::GeneralizedBeta1) \n\nCompute the variance of the GeneralizedBeta1 distribution d. \n\n\n\n\n\n","category":"method"},{"location":"methods/#Implemented-methods","page":"Implemented methods","title":"Implemented methods","text":"","category":"section"},{"location":"methods/","page":"Implemented methods","title":"Implemented methods","text":"rand\npdf\nlogpdf\ncdf\nquantile\nmean\nvar\nstd","category":"page"},{"location":"methods/#Base.rand","page":"Implemented methods","title":"Base.rand","text":"rand(d::GeneralizedBeta1[, n::Integer])\n\nDraw n random numbers from the GeneralizedBeta1 distribution d. \n\n\n\n\n\n","category":"function"},{"location":"methods/#Distributions.pdf","page":"Implemented methods","title":"Distributions.pdf","text":"pdf(d::GeneralizedBeta1, x::Real)\n\nCompute the pdf of the GeneralizedBeta1 distribution d at x. \n\n\n\n\n\n","category":"function"},{"location":"methods/#Distributions.logpdf","page":"Implemented methods","title":"Distributions.logpdf","text":"logpdf(d::GeneralizedBeta1, x::Real)\n\nCompute the logpdf of the GeneralizedBeta1 distribution d at x. \n\n\n\n\n\n","category":"function"},{"location":"methods/#Distributions.cdf","page":"Implemented methods","title":"Distributions.cdf","text":"cdf(d::GeneralizedBeta1, x::Real)\n\nCompute the cdf of the GeneralizedBeta1 d at x. \n\n\n\n\n\n","category":"function"},{"location":"methods/#Statistics.quantile","page":"Implemented methods","title":"Statistics.quantile","text":"quantile(d::GeneralizedBeta1, p::Real) \n\nCompute the p-quantile of the GeneralizedBeta1 distribution d. \n\n\n\n\n\n","category":"function"},{"location":"methods/#Statistics.mean","page":"Implemented methods","title":"Statistics.mean","text":"mean(d::GeneralizedBeta1) \n\nCompute the mean of the GeneralizedBeta1 distribution d. \n\n\n\n\n\n","category":"function"},{"location":"methods/#Statistics.var","page":"Implemented methods","title":"Statistics.var","text":"var(d::GeneralizedBeta1) \n\nCompute the variance of the GeneralizedBeta1 distribution d. \n\n\n\n\n\n","category":"function"},{"location":"methods/#Statistics.std","page":"Implemented methods","title":"Statistics.std","text":"std(d::GeneralizedBeta1)\n\nCompute the standard deviation of the GeneralizedBeta1 distribution d. \n\n\n\n\n\n","category":"function"},{"location":"#Index","page":"Index","title":"Index","text":"","category":"section"},{"location":"","page":"Index","title":"Index","text":"","category":"page"}]
}