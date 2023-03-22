This section summarizes R functions for the normal distribution.  For all of these functions, there are optional parameters specifying the mean and standard deviation.  These optional parameters default to the standard normal distribution with mean of 0 and standard deviation of 1.

- pnorm(x, mean=0, sd=1) - cumulative distribution function.  
- qnorm(p, mean=0, sd=1) - inverse cumulative distribution function.   
- rnorm(n, mean=0, sd=1) - generate a n-value vector of values
- dnorm(x, mean=0, sd=1) - return the probability density for an x-value

Additional help is available from R Studio in the "help" tab.

# normality test

To see if a sample or other vector of values is normally distributed, use the technique in textbook section 7.4.   In example 7.17, to generate normal z-scores for a sample of egg weights, use the R code below for `normal_zscores` .

```

egg_weights = c(53.04, 53.50, 52.53, 53.00, 53.07, 52.86, 52.66, 53.23, 53.26, 53.16)
sorted_egg_weights = sort(egg_weights)
inv_cdf_values = normal_zscores(length(egg_weights))
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

And a correlation that is above the critical value in Table 7.1 for sample size 10, 0.880 (in this case, I got correlation r = 0.986).  

For R code to automate generating the `inv_cdf_values` value above using the `normal_zscores` function, see [normality_test.R](normality_test.R)

Go to the bottom of this page and click on the link for the R code that I wrote to implement the method discussed in the slides for normality testing.&nbsp; To get and run the actual code, as opposed to the github webpage for the code:

- click on the raw button
- download that code to your laptop in the file **normality_test.R**
- upload to R studio
- click on the file normality_test.R in R studio files tab to see it in code panel
- click on "source" button within code panel to load that function into the R interpreter
- You can now call this function just like any other R function

This code generates a set of percentiles.   For example, with the sample size 10 from the example above, we get:

```

> normal_zscores(10)
 [1] -1.6448536 -1.0364334 -0.6744898 -0.3853205 -0.1256613
 [6]  0.1256613  0.3853205  0.6744898  1.0364334  1.6448536

```
To understand where these numbers come from, the first 2 values in the returned vector are:

```

> qnorm(1/(2*10))
 [1] -1.6448536
> qnorm(3/(2*10))
 [1] -1.0364334

```
The plot of egg weights against these values is shown above.   We can use the `cor` function to calculate the linear correlation as well and use the table of critical values for that to decide if this is a normal distribution or not.

![](images/critical_values.png)
