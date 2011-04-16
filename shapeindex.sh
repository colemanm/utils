#!/bin/bash
#
# indexes all shapefiles in a directory for mapnik rendering
#

# pass path to shapefiles
# e.g. -- shapeindex.sh /path/to/files
PATH=$1
FILES=$1/*

for f in $FILES
do
	filename=$(/usr/bin/basename $f)
	extension=${filename##*.}
	filename=${filename%.*}
	
	echo $filename
done