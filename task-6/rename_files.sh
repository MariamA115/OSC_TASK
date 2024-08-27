#!/bin/bash
echo "Enter the directory path"
read directory
if [[ -d $directory ]]; then
	for file in "$directory"/*.txt; do
		if [[ -e $file ]]; then
			filename=$(basename "$file")
			mv "$file" "$directory/old_$filename"
		fi
	done
else
	echo "Not a directory"
fi
















