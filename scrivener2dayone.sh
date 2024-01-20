#!/bin/sh

for METADATA_FILE in *MetaData.txt; do
	CONTENT_FILE=${METADATA_FILE/ MetaData.txt/.md}
	grep "Created" "$METADATA_FILE" | sed 's/Created:/Date:/'
	echo "Weather: Unknown"
	echo "Location: Unknown"
	echo
	cat "$CONTENT_FILE"
	echo
	echo
	echo "#scrivener_import"
	grep "Keywords:" "$METADATA_FILE" | sed 's/ / #/g' | sed 's/-/_/g' | sed 's/,//g' | sed 's/Keywords: //'
	echo "$@"
	echo 
	echo
done

##
## Scriveneer metadata headers
##
#Created: November 26, 2023 at 2:36 PM
#Modified: November 27, 2023 at 8:09 AM
#Status: No Status
#Label: No Label
#Keywords: family, funny

##
## DayOne metadata headers
##
#	Date:	January 19, 2024 at 8:11:24 PM CST
#	Weather:	36°F Clear
#	Location:	1st St, Austin, Texas, United States
