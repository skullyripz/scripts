#!/bin/bash
# Filename: fileinfo.sh
# Author: Kenneth Christian
# Created on: 03-20-2017
# -----------------------------

FILES="$(ls)"

echo

for file in $FILES
do

  if [ ! -e "$file" ]		# Check if file exists
  then
    echo "$file does not exist."; echo
    continue			# On to next file
  fi

  ls -l $file | awk '{ print $8 "	file size: " $5 }'  # Print 2 fields.
  whatis `basename $file`	# File info.
  echo
done

exit 0
