#!/bin/bash

cd $1;

mogrify -sampling-factor 4:2:0 -strip -quality 85 -interlace JPEG -colorspace RGB -resize 1920x1080 *.jpg

