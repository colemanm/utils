#!/bin/bash
# for zipping shapefiles in a directory (and all their associated files)

# Put path to directory with zip files:
FILES=/path/to/files/*
for f in $FILES
do
	# Get basename without extension
	filename=$(basename $f)
	extension=${filename##*.}
	filename=${filename%.*}
	
	# Exclude already zipped files
	if [ ! -f $filename.zip ]
	then
		
		# zip 'em
		if [ "$extension" != "sh" ] && [ "$extension" != "xml" ]
			then
			echo "Processing $filename file..."
			zip $filename $filename.*
		fi
	fi
done