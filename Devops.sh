#!/bin/bash

#This script finds all files that meet a provided pattern, then
#renames that file, replacing the first pattern with the second.
#It will also look through the contents and replace the first
#pattern with the second one.

files=$(find $1 -name "*$2*" )
for file in $files
do
    sed -i s/$2/$3/g $file
    mv "$file" "$(echo "$file" | sed s/$2/$3/g)"
done
