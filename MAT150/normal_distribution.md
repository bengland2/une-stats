This section summarizes R functions for the normal distribution.  For all of these functions, there are optional parameters specifying the mean and standard deviation.  These optional parameters default to the standard normal distribution with mean of 0 and standard deviation of 1.

- pnorm(x, mean=0, sd=1) - cumulative distribution function.  
- qnorm(p, mean=0, sd=1) - inverse cumulative distribution function.   
- rnorm(n, mean=0, sd=1) - generate a n-value vector of values
- dnorm(x, mean=0, sd=1) - return the probability density for an x-value

Additional help is available from R Studio in the "help" tab.

# normality test

To see if a sample or other vector of values is normally distributed, use the technique in textbook section 7.4.   In example 7.17, to generate normal z-scores for a sample of egg weights, use:

```

egg_weights = c(53.04, 53.50, 52.53, 53.00, 53.07, 52.86, 52.66, 53.23, 53.26, 53.16)
sorted_egg_weights = sort(egg_weights)
sample_size = length(egg_weights)
probability_step = 1/(sample_size)
probability_values = seq(probability_step/2.0, 1, probability_step)
inv_cdf_values = qnorm(probability_values)
plot(sorted_egg_weights, inv_cdf_values, 
     col='darkgreen', 
     type='b', 
     main='normality test for egg weights', 
     ylab='normal dist.', 
     xlab='sorted egg weights')
r = cor(sorted_egg_weights, inv_cdf_values)

```
If the egg weights are normally distributed, then you should get a plot that is something like this:

![](images/egg_weights_normality.png)

And a correlation that is above the critical value in Table 7.1 for sample size 10, 0.880 (in this case, I got correlation r = 0.941).


