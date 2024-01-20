#!/bin/sh

for METADATA_FILE in *MetaData.txt; do
	TXT_FILE=${METADATA_FILE/ MetaData.txt/.md}
	#echo "+ $METADATA_FILE -> $TXT_FILE"
	echo "-----"
	cat "$METADATA_FILE"
	echo "--"
	cat "$TXT_FILE"
done