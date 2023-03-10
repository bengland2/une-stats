How do you compute the mean, variance and standard deviation of a probability distribution in R?   Standard deviation is just the square root of the variance.   This example will illustrate how R can make such computations easy.

See textbook example 7.7 (with a [data set here](data_sets/exer7_7.csv)) and import this data set into R studio first.

"Airlines sometimes overbook flights. Suppose that for a plane with 100 seats, an airline takes 110 reservations. Define the variable x as the number of people who actually show up for a sold-out flight."

a) what is the probability that the airline can accomodate everyone who shows up

This can only happen if no more than 100 people show up.  First, we need to identify the probabilities in the data frame that correspond to that event.   This is rows 1 through 6 in the data frame.   Since the probabilities (relative frequencies) are broken up by number of passengers, they are disjoint and can just be added together.   let 

```

> pr = exer7_7$proportion
> sum(pr)
[1] 1

```
so the proportions do add up to 1 as expected.  we need pr[1] + pr[2] + ... + pr[6] , which can be written more simply in R as:
```

> pr[1:6]
[1] 0.05 0.10 0.12 0.14 0.24 0.17
> sum(pr[1:6])
[1] 0.82

```

b) what is probability that not all passengers can be accommodated?

This is just the opposite event from part a), so we can compute with:

```

> 1 - sum(pr[1:6])
[1] 0.18
> sum(pr[7:16])
[1] 0.18

```

c) if you are trying to get a seat on this flight and you are number 1 on the standby list, what is probability that you will get to take the flight?

If you are first on the standby list, then as long as there is a single seat available, you can get on.   This will happen if there are 99 or less passengers that have regular seats.   So the probability is:

```

> sum(pr[1:5])
[1] 0.65

```
If you are number 3 on standby, then you get to fly if 97 or less passengers with regular tickets show up, with probability:

```

> sum(pr[1:3])
[1] 0.27

```


d) I made this question up - what is the mean of this probability distribution?   it's **sum(xP(x))** which translates to:

```

> passenger_mean = sum(exer7_7$passengers * exer7_7$proportion)
> passenger_mean
[1] 98.9813

```
Why does this work?  R first multiplies each element of the `passengers` vector by the corresponding element of the `proportion` vector to create a different vector.   It then sums up the elements of the new vector.

e) I made this up - what is the variance and standard deviation?

first we have to compute the squares of x - mean(x) .

```

> minus_mean = exer7_7$passengers - passenger_mean
> minus_mean_sqr = minus_mean * minus_mean
> passenger_variance = sum(minus_mean_sqr * pr)
> passenger_stdev = sqrt(passenger_variance)
> passenger_variance
[1] 5.92695
> passenger_stdev
[1] 2.434533

```

