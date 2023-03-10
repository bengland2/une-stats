You only need a tiny subset of R language statistics capabilities for MAT150.   Below is a cheat sheet of statistical functions.  In order to make use of this you must understand how to pass parameters to an R library function and how R will pass parameters back to you.   [Click here to see how to call R functions](R-function-calls.md) .

# functions for constructing vectors and data frames

* **c(value1, value2, ... )** - construct a vector (i.e. list) of R values
* **sort(number-list)** - useful for computing percentiles, frequency tables
* **length(list)** - number of values in the list = "vector"
* **subset(number-list, true-false-expression)**

# functions for descriptive statistics

* **sum(number-list)** - adds up all the values in the column
* **label_percent(fraction-list, accuracy=0.01)** - turns fraction into text percentage with 2 decimal places
* **count(any-list)** - constructs a frequency table showing how often any particular value occurs in any-list
* **cumsum(freq-column)** - generates cumulative frequency list from a relative frequency list or frequency list
* **mean(number-list)** 
* **sd(number-list)** - standard deviation
* **var(number-list)** - variance = square of standard deviation
* **median(number-list)** 
* **min(number-list)** - minumum value
* **max(number-list)** - maximum value
* **quantile(number-list, percentile-list)** - produces sequence of percentile values, only the percentile you want is expressed as a fraction not a number between 0 and 100.   Default is c(0, 0.25, 0.50, 0.75, 1.00) for 0th (min), 25th, 50th, 75th, and 100% (max) values.
* **IQR(number-list)** - computes Inter-quartile range for a sample

# trimmed means

Once you've sorted the list, you can do a trimmed mean by taking a slice from the middle of the list using array indexes.  For example, suppose we want to trim approximately 10% off the ends of a list.

```
> mylist=c(3,0,24,15,7,12,13)
> mysort=sort(mylist)
> mysort
[1] 0 3 7 12 13 15 24
> n = length(mysort)
> mean(mysort)
[1] 10.57143
> trim_indices = n * 10 / 100
> mytrim = mysort[(trim_indices+1): (n-trim_indices)]
> mytrim
[1] 3 7 12 13 15
mean(mytrim)
[1] 7
```
as you can see, by removing the extreme values, we get a very different result for the mean.  In the statement that assigns `mytrim`, pay attention to the parentheses - the statement does not work without them!


# functions for analyzing bi-variate data

* **cor(column1, column2)** - compute correlation statistic for 2 variables 
* **cor.test(column1, column2)** - compute all correlation-related statistics for 2 variables
* **lm(y ~ x)** - compute least-squares linear regression (best-fit line)

# 4 functions for each probability distribution

Every probability distribution in R has 4 functions associated with it, and these are named using a prefix letter:

* **r** - returns a vector of freshly generated random values obeying the probability distribution, required arguments are:
** **n** - number of values in the returned vector
* **d** - probability density for any valid x-value of the probability distribution function
** **x** - input x-value for which you want to get the density
* **p** - cumulative probability distribution function, returns "area to the left"
** **a** - input x-value, function returns P(x < a)
* **q** - inverse cumulative probability distribution function, can be used to compute percentiles
** **p** - input probability, function returns the x-value a such that P(x < a) = p

For example, for the normal distribution, all of the 4 function names end with "norm", and begin with the above 4 letters.  So for example, the `pnorm()` function computes the probability P(x < a) for input value a.
