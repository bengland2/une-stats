Here are the 4 functions for calculating with the T distribution in R:

- pt(x, deg_freedom, lower.tail=TRUE) - CDF - return cumulative distribution function (CDF) of x
- qt(probability, deg_freedom, lower.tail=TRUE) - inverse CDF - convert probability p to x coordinate A such that P(x < A) = p
- dt(x, deg_freedom) - calculate probability density at x
- rt(n, deg_freedom) - generate a sample of n values from the T distribution

lower.tail=FALSE will result in evaluating area under the curve to the right, rather than area under the curve to the left. So pt(x, 4, lower.tail=FALSE) is same as 1 - pt(x,4)
