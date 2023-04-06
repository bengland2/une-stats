Here are the 4 functions for calculating with the T distribution in R:

- pt(x, deg_freedom) - CDF - return P(t < x) "area to the left"
- qt(probability, deg_freedom) - inverse CDF - convert probability p to x coordinate A such that P(x < A) = p
- dt(x, deg_freedom) - calculate probability density at x
- rt(n, deg_freedom) - generate a sample of n values from the T distribution
