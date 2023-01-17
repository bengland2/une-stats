This section describes how to generate your own dataset, also called an R data frame.   You can generate a .csv dataset using a text editor. 

# editors
Here are apps on all the platforms that support text editing and are available to all of you for free below.  If you can't find one of these, let me know!  Or if the resulting saved file does not load into R Cloud Studio correctly let me know.

## R Studio
You can edit a .csv file in the R Studio Source pane and then save that to a file in your R Studio environment, which means that it is immediately available to "Import Dataset" so you can import it to your R pane and see a table of values.  This is the most universal, simplest way to edit.

## windows Notepad
I used Notepad, but you can also use Microsoft Word and use File -> Save As ...    dialog and specify a file name and text format in order to get a file extension of .txt

## macbook
Also consider using Excel and exporting the result as a .csv file, this is supported on Windows at least.

## iPad
Use R Cloud Studio's editor.  Once the file is created in R Cloud Studio, you can download it to your iPad.

## chromebook or Linux
On Chromebooks the equivalent would be something like Nano or Gedit?  If your an antiquated Linux geek like me, you could use vi or emacs as well from a terminal window. 

# Format

 A **.csv** file is a simple way of encoding the contents of a table in a text file.   "csv" stands for "comma-separated values", referring to the fact that each row of a table has multiple values which are separated by a comma.   A .csv file consists of 1 row of column headers, followed by an unlimited number of rows of data.  Each column header should be in quotes, and represents the name of the column in an R data frame.   You can use single quotes or double quotes, but never mix quote types within the same .csv file.  For example, here are the first 3 models of motorcars in the R data frame called *mtcars* :
 
```

head(mtcars, 3)
               mpg cyl disp  hp drat    wt  qsec vs am gear carb
Mazda RX4     21.0   6  160 110 3.90 2.620 16.46  0  1    4    4
Mazda RX4 Wag 21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
>

```

To encode this in a .csv file, first specify the column names in row 1, then each row of the data frame in a text line,  like this:

```

rowname,     mpg, cyl,disp,hp, drat,wt,   qsec, vs,am,  gear,carb
'Mazda RX4', 21.0,  6,160, 110,3.90,2.620,16.46,0, 1,   4,   4
'Mazda Wag', 21.0,  6,160, 110,3.90,2.875,17.02,0, 1,   4,   4
...

```

If you avoid using any punctuation in column names, and if you avoid using embedded whitespace in them also, then you don't have to quote the column names, reducing the amount of typing required.

Note that single-quotes work just as well as double-quotes and are easier to type, so use single-quote characters for names similar to column 1.

If your columns don't align vertically, you can also use a monospace font to enforce visual alignment of columns for this purpose.  A monospace font uses the same width (in pixels) for every character.   For example, I used the *Courier* font above.   Try changing the font and see if it is easier to make table columns align.

Also note that white space (any sequence of space and tab characters) does not matter outside the quotes -- you can use white space to format the text so the columns line up.   This makes it easier to verify that you got the format correct, and every field is separated from other fields by a comma. 

Suggestion: like any video game, save early and often to avoid losing any work.   You can always save again to improve it.

