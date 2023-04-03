This page shows how to evaluate sampling distribution statistics using the R language.

# generate a sampling distribution

You need to generate a set of samples of the desired sample size first.   Using the R `matrix` data type, we show an example here by generating 20 samples of sample size 40 for the uniform distribution from 10 to 20 (any distribution can be done this way).  The result will be a vector of sample means, a population mean, and a population std. dev.

```

# each sample will be a column in the matrix
my_rows = 40
my_cols = 20
set_of_samples = matrix( runif(my_rows * my_cols, min=10, max=20), nrow=my_rows, ncol=my_cols )

```

# sampling distribution of means

```
sample_means = vector(mode='numeric', length=my_cols)
# extract each column as a matrix "slice"
for (i in seq(1,my_cols)) { sample_means[i] = mean(set_of_samples[1:my_rows,i]) }
population_mean = mean(set_of_samples)
population_sd = sd(set_of_samples)
samp_dist_mean = mean(sample_means)
samp_dist_sd = sd(sample_means)
predicted_samp_dist_sd = population_sd / sqrt(my_cols)

```
If we compare the sampling distribution mean with the population mean, we get an exact match! :

```

> samp_dist_mean
[1] 14.99952
> population_mean
[1] 14.99952

```

If we compare the sampling distribution standard deviation of means with the population mean and the predicted value of the sampling distribution standard deviation of means, we see that the actual sampling distribution standard deviation of means isn't an exact match but is less than the predicted value, which means the predicted value is a conservative estimate. 

```

> population_sd
[1] 2.910113
> samp_dist_sd
[1] 0.5012273
> population_sd / sqrt(my_cols)
[1] 0.6507211

```

# sampling distribution of proportion

NOT DONE YET


