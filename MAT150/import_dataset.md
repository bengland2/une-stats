The textbook supplies data sets to instructors that correspond to tables etc within the book, so you don't have to type them in.   When an assignment requires such a data set, it will be attached as a text file to the assignment or quiz.

# Getting file into R Studio

You load it in by downloading the data set file from Brightspace to your system (e.g. laptop Downloads folder) 

MacBook: click on the link, it should show you a table in text form, you then right-click (or 2 fingers on mouse pad) to get a menu and then do "Save As...", and save in source form (not web archive).  

All: use a file name that begins with a letter and has no punctuation marks in it other than the `_` (underscore) character.

Once this is done, go to your R cloud studio window, create a new project for the assignment, and click the `Upload` button in the lower right pane's `Files` tab, then select the file you just downloaded.  The file should appear in R Cloud studio in the lower right pane in the Files tab.  

Note: do not save anywhere except in your R Studio project area, or you will get "access denied" or something like that.

## Filenames

NOTE: Make sure that the filename (to the left of the .txt) does not have any characters in it other than letters, digits, or underscore.   This is so that R Cloud Studio creates a valid data frame name that you can use in the R interpreter.   If the name isn't of this format, select the file and hit the `Rename` button.

# Importing into R interpreter as data frame

Now you can import the data -- press the `Import Dataset`  button in the upper right tab and choose the top `From Text (base)` menu entry.  When you see a dialog box, fill it out as follows:

* Heading = Yes
* Row Names = Automatic
* Quote = Single

And hit `Import` button.  At this point, the data should be part of the R environment and you should be able to work with it for your assignment.
