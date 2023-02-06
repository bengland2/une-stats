# How to generate bar charts in R

You need to have labels for the different bars in the bar chart.   These go in the `names.arg` optional parameter.

To see how to generate bar charts for frequency tables, see [frequency_tables.md](frequency_tables.md)

# simplest bar chart

Using example 3.3 from the textbook, we create a table showing different levels of typographical errors in resumes:

```

typos = data.frame(level=c('1', '2', '3', '> 3'), relfreq=c(.4, .36, .14, .07))
typos$relfreqpct = typos$relfreq * 100
barplot(typos$relfreqpct, 
  names.arg=typos$level, 
  col='red', 
  xlab='typographical errors in resume', 
  ylab='percentage of resumes')
  
```

and this looks like:

![](images/barplot-ex32-resumes.png)


# textual bar labels, single set of bar lengths

In order to use textual labels for each bar, we have to use horizontal bars, in order to leave enough space on the left for names or descriptive text.  We must make the bars small enough that there is room for text on the left.   For example, with the dataset from [example 3.6](https://raw.githubusercontent.com/bengland2/une-stats/main/MAT150/data_sets/ex3_6.txt), this can be done with something like:

```

barplot( 
  ex3_6$Tons.Produced,
  names.arg = ex3_6$Type.of.Grape,
  horiz=TRUE,
  las=2,
  cex.names=0.5,
  xlab="Tons Produced", 
  main="California Grapes", 
  col=rainbow(length(ex3_6$Tons.Produced)))

```
These parameters are described in documentation:

* the first (required) parameter provides the relative length of each bar
* `names.arg` provides the textual labels for each bar
* `horiz` - when set to TRUE instead of default of FALSE, it makes the bars horizontal instead of vertical (the default)
* `las=2` rotates the make and model to be horizontal to go with the horizontal bars
* `cex.names=0.5` squeezes down the size of the row names so that each fits within the width of a bar - default is 1.0 and you may have to adjust down or up to fit.
* we add the usual parameters for axis labels, title and color [described elsewhere](axis_labels_and_title.md)

The result looks like this:

![](images/california-grapes.png)

# example 3.1, comparative bar chart

First we have to load the example data set in the right format to generate the bar graph.  Start with the data frame in example 3.1.   Then we convert it to a matrix format that is understood by the `barplot` function, like this:

```

> ex31df$IdealDistanceName = c('Less than 250 miles', '250 to 500 miles', '500 to 1000 miles', 'more than 1000 miles')
> data = as.matrix(data.frame(Students=ex31df$Students, Parents=ex31df$Parents))
> data
     Students Parents
[1,]     4450    1594
[2,]     3942     902
[3,]     2416     331
[4,]     1907     180

```

Next we add in the description of each row of data as a row name in the matrix:

```

> rownames(data) = ex31df$IdealDistanceName
> data
                     Students Parents
Less than 250 miles      4450    1594
250 to 500 miles         3942     902
500 to 1000 miles        2416     331
more than 1000 miles     1907     180

```
Now we are ready to graph it:

```

> barplot(data, 
    las=2, 
    cex.names=0.8, 
    main='Differences in ideal distance for students and parents', 
    col=rainbow(length(ex31df$Students)), 
    horiz=TRUE,
    beside=TRUE)
> legend("topright", 
    legend=ex31df$IdealDistanceName, 
    fill=rainbow(length(ex31df$Students)))

```
And you get:

![](images/example_3_1_bar_chart.png)

You can also generate a stacked bar chart from the same data by removing `beside=TRUE` optional argument:

![](images/example_3_1_stacked_bar.png)

