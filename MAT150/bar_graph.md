# How to generate bar charts in R
You need to have labels for the different bars in the bar chart. 

# textual bar labels

In order to use textual labels for each bar, we have to use horizontal bars, in order to leave enough space on the left for names or descriptive text.  We must make the bars small enough that there is room for text on the left.   For example, with the dataset from [example 3.6](data_sets/ex3_6.txt), this can be done with something like:

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
