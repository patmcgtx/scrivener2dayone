# How to use this script

## Export from Scrivener

In Scrivener, choose **File -> Export -> Files...** and export the selected folders/files as MultiMarkdown (.md), with Notes and Metadata options selected.

## Run scrivener2dayone

Run the script `scrivener2dayone.sh` in the same directory as the exported Scrivener files.

The script will produce text output which can be redirected to a file and imported into DayOne, for example as `day-one.txt`.

`scrivener2dayone.sh > day-one.txt`

You can also add some command-line arguments, which will be concatenated to the end of each entry.  This give you a way to add hastags or whataver you want on the end of every entry you import into DayOne.

`scrivener2dayone.sh \#ideas \#dialog > day-one.txt`

## Import into DayOne

Import the file (e.g. `day-one.txt`) into DayOne using **File -> Import -> Plain text File**.

Voila!  Now all your Scrivener stuff is in DayOne.  Tag and organize at your leisure.