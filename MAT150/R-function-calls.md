All of you are going to have to know how to call R functions, such as the statistics functions built into R.   
You need to understand function inputs, outputs and intended purpose.  For a more complete introduction, [see this link into R tutorial](https://intro2r.com/using-functions-in-r.html).

# function return value

When an R function completes, it returns a value.   If this value is going to be used later on, you should save it in a variable.  For example:

```

> v = c(1,2,3,4)
> v
[1] 1 2 3 4
> length(v)
[1] 4

```
So here the function name is "c".   
The function arguments are the members of the vector that it constructs, 
and the function return value is a vector containing this value.  We saved this value in the variable "v", so that we can then use this value in subsequent statements, such as "length(v)".

# function arguments

When an R function is called, you pass zero or more values to it as inputs.   These are called function arguments.  All arguments have a name and a value.  There are two types of arguments:

* required - must *always* be provided, but does not require argument name to be provided
* optional - can be omitted from a function call, and uses a default value in this case.  If it is used then the syntax name=value must be used.

It is good form to put required arguments first in a function call, followed by optional arguments.   

For example, this function generates a histogram of 300 values generated from a standard normal distribution.

```

hist(rnorm(300), col="green", breaks=20)
hist(rnorm(300)

```
In this example, the required argument is the vector of values that we want to plot in the histogram, and the optional argument names are "col" and "breaks".   We can leave out the optional arguments, as we do in the 2nd line of code.  But we cannot leave out the vector of values.  For the required argument, we do not have to specify a name.
