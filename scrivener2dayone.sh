#!/bin/sh

for METADATA_FILE in *MetaData.txt; do

	TITLE=${METADATA_FILE/ MetaData.txt/}
	CONTENT_FILE=${METADATA_FILE/ MetaData.txt/.md}

	# Scrivener creates a subdir if there is embedded media.
	if test -d "${CONTENT_FILE}"; then
		CONTENT_FILE="${CONTENT_FILE}/${CONTENT_FILE}"
	fi

	if test -f "${CONTENT_FILE}"; then
		grep "Created" "$METADATA_FILE" | sed 's/Created:/Date:/'
		echo "Weather: Unknown"
		echo "Location: Unknown"
		echo
		echo "${TITLE}"
		echo
		cat "$CONTENT_FILE"
		echo
		echo
		echo "#scrivener_import"
		grep "Keywords:" "$METADATA_FILE" | sed 's/ / #/g' | sed 's/-/_/g' | sed 's/,//g' | sed 's/Keywords: //'
		echo "$@"
		echo 
		echo
	else
		echo "! Skipping ${CONTENT_FILE}" 1>&2
	fi 
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
