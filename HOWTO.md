# General approach on how this script works

## Given a Scrivener export

In Scrivener, choose **File -> Export -> Files...** and export the selected folders/files as MultiMarkdown with Notes and Metadata selected.

Save this to a macOS folder which I will call here `{BOOK_EXPORT_DIR}`.

## Run scrivener2dayone

Run the script `scrivener2dayone.sh` with one argument: the path to `{BOOK_EXPORT_DIR}`

For example:

`scrivener2dayone.sh ~/~/tmp/book-export/`

The script will produce text output which can be redirected to a file and imported into DayOne, for example as `Journal.txt`.

`scrivener2dayone.sh ~/~/tmp/book-export/ > Journal.txt`

## Import into DayOne

Import the file (e.g. Journal.txt) into DayOne using **File -> Import -> Plain text File**.

Voila!  Now all your Scrivener stuff is in DayOne.  Tag and organize at your leisure.



