You only need a tiny subset of R language statistics capabilities for MAT150.   Below is a cheat sheet of statistical functions.  In order to make use of this you must understand how to pass parameters to an R library function and how R will pass parameters back to you.   See the R tutorial section on basics at:

https://intro2r.com/using-functions-in-r.html

Pay close attention to required and optional function parameter syntax.  
* Optional arguments do not have to be passed into the function and have default values, but if you choose to supply them, they must be passed with the syntax name=value.
* For required arguments, you just pass the value of the argument into the function, and you pass all required arguments in the order that the function expects.

# function list

* **sort(number-list)** - useful for computing percentiles, frequency tables
* **subset(number-list, true-false-expression)**
* **sum(number-list)** - adds up all the values in the column
* **label_percent(accuracy=0.01)(fraction-list)** - turns fraction into text percentage with 2 decimal places
* **count(any-list)** - constructs a frequency table showing how often any particular value occurs in any-list
* **cumsum(freq-column)** - generates cumulative frequency list from a relative frequency list or frequency list
* **mean(number-list)** 
* **sd(number-list)** - standard deviation
* **var(number-list)** - variance = square of standard deviation
* **cor(column1, column2)** - compute correlation statistic for 2 variables 
* **cor.test(column1, column2)** - compute all correlation-related statistics for 2 variables
* **median(number-list)** 
* **min(number-list)** - minumum value
* **max(number-list)** - maximum value
* **quantile(number-list)** - produces 0th, 25th, 50th, 75th, and 100% values - 0th percentile is really the min, and 100% value is the max
* **t.test(s1, s2, paired=FALSE, alternative="two-sided", mu=0, conf.level = 0.95)** - see this link for further details.

# trimmed means

Once you've sorted the list, you can do a trimmed mean by taking a slice from the middle of the list using array indexes.  For example:

```
mylist=c(3,0,24,15,7,12,13)
mysort=sort(mylist)
mysort [1] 0 3 7 12 13 15 24
trim = 1
mytrim = mysort[(1+trim): (length(mysort)-trim)]
mytrim [1] 3 7 12 13 15
mean(mytrim) [1] 10
```

# converting x-axis values to probabilities

These functions convert a continuously distributed random variable value to the probability that a value <= to it will occur.  This is also referred to as the "area to the left" in the graphical representation.   If the optional parameter **lower.tail=FALSE** is passed, then we get the area to the right.

* **pnorm(x, mean=0, sd=1, lower.tail=TRUE)** - for normally distributed random variable

* **pt(x, lower.tail=TRUE)** - for a t-distributed random variable

# converting probabilities to x-axis values

These functions convert a probability to a continuously distributed random variable percentile (i.e. the x value such that the area under the curve equals the input probability.  If the default value of lower.tail=TRUE is used, then this is also referred to as the "area to the left" in the graphical representation, but if lower.tail=FALSE is specified, then we get the "area to the right".

* **qnorm(prob, mean=0, sd=1, lower.tail=TRUE)** - for normally distributed random variable

* **qt(prob, lower.tail=TRUE)** - for a t-distributed random variable
