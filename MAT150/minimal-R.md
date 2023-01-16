R language is based on values, expressions, variables, vectors and data frames.

# values and data types

A value is a single indivisible piece of data, such as the number 5 or the string "hi".   You will encounter these value types:

* integer - whole number, such as -4
* floating-point - subset of real numbers representable in a computer, such as 2.57
* boolean - TRUE or FALSE
* string - text surrounded by single- or double-quotes, such as "green"

# vectors

A vector is a sequence (also called list, or array) of values.  Vectors can be constructed with the c() syntax.  For example, to construct a vector of last 5 leap years:

```

> leap_years = c(2020, 2016, 2012, 2008, 2004)
> leap_years
[1] 2020 2016 2012 2008 2004

```

Each value in this vector can be referenced by an index, where the first index is 1.  For example:

```

> leap_years[2]
[1] 2016

```

To get the length of a vector, for example:

```

length(leap_years):

```
Again, most other languages have an equivalent data type (example: lists in Python).  But R also natively supports arithmetic and other operations directly on vectors, allowing you to avoid writing loops to do the same thing to each number in a vector.  For example, this expression generates the next 5 leap years in a vector:

```

l> leap_years + 20
[1] 2040 2036 2032 2028 2024

```

# variables

an R *variable* is a named value.  You create a variable by assigning it a value.   For example

```
a = 3
```

Creates a new variable, *a*, if it does not already exist, and assigns it the value 3.   

Posit Cloud Studio shows you the existing variables and their values in the *Environment* tab in the upper right pane.  

# data frames

It also shows you what data frames exist and allows you to see their contents.   For example, to view a data frame in a tabular format, click on the data frame in the environment pane.   Alternatively, you can type

```

View(YourFrame)

```

To do the same thing.  

## to create a data frame

For example: 

```
> myframe = data.frame(first_3_pos_ints = c(1,2,3), next_3_pos_ints = c(6,5,4))
> myframe
  first_3_pos_ints next_3_pos_ints
1                1               4
2                2               5
3                3               6
```

The data frame will have two columns named col1 and col2.

## reference a data frame column

You can pull out the vector of values for a particular column using the "$" sign followed by the column name.  For example:

```
> myframe$first_3_pos_ints
[1] 1 2 3
```

## add a column to a data frame

To create a new column in a data frame, simply assign a value to the column as follows:

```

> myframe$another_3_ints = myframe$next_3_pos_ints + 3
> myframe$another_3_ints
[1] 7 8 9

```
## filter rows from a data frame

You can select a subset of the rows in a data frame using a boolean (i.e. true/false) expression and the `subset` function.  Example:
```

> subset(myframe, myframe$first_3_pos_ints != 1)
  first_3_pos_ints next_3_pos_ints another_3_ints
2                2               5              8
3                3               6              9

```
