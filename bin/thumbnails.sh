#!/bin/bash

cd $1;

for f in ./* ; do
    echo "Processing $f";
	OUTPUT="${f%.*}" 
	OUTPUT+="_thumbnail.jpg";
	convert $f -geometry x200 -sampling-factor 4:2:0 -strip -quality 85 -interlace JPEG -colorspace RGB $OUTPUT;
	echo "$OUTPUT created";
done
