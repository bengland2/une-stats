This section is intended to tell you just enough about the R language to get you through the MAT150 course.   There are many excellent references on R, but often they include far more information than you need to do basic statistical calculations.

For example, [click here for a free R tutorial](https://intro2r.com/)

Tasks you need to be able to do with R in order to complete MAT150 revolve around data frames, vectors and variables.   

**Definition:** an R vector is a list of numbers, and each number in the list can be referenced directly using an index.

Again, most other languages have an equivalent data type (example: lists in Python).  But R also natively supports arithmetic and other operations directly on vectors, allowing you to avoid writing loops to do the same thing to each number in a vector.

**Definition:**  A *data frame* is a list of named columns.   Each column is an R vector (list of numbers).  It organizes a dataset so that you can easily access it inside of the R interpreter.

Data frames also exist within other languages, such as Python (example: *pandas* package), but R natively understands them and thus makes them easier to use.

**Definition**: an R *variable* is a named value.  You create a variable by assigning it a value.   For example

```
a = 3
```

Creates a new variable, *a*, if it does not already exist, and assigns it the value 3.   

Posit Cloud Studio shows you the existing variables and their values in the *Environment* tab in the upper right pane.  It also shows you what data frames exist and allows you to see their contents.   For example, to view a data frame in a tabular format, click on the data frame in the environment pane.   Alternatively, you can type

```
View(YourFrame)
```

To do the same thing.

TBS - links to subsections for each of these tasks


* create a data frame
* reference a data frame column
* add a column to a data frame
* filter rows from a data frame
* load a data frame from a file on your laptop
* edit a dataset file and create a data frame from it
* write out a data frame into a file and download it to your laptop
* save graphs of data to a .png file and save that file on your laptop
