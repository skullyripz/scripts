#!/bin/bash
# Filename: script-detector.sh
# Author: Kenneth Christian
# Created on: 03-20-2017
# Usage: Detects scripts in a directory
# -----------------------------

TESTCHARS=2	# Test first 2 characters
SHABANG='#!'	# Scripts begin with a "sha-bang."

for file in *	# Traverse all the files in current directory
do
  if [[ `head -c$TESTCHARS "$file"` = "$SHABANG" ]]
  then
    echo "File \"$file\" is a script."
  else
    continue
  fi
done

exit 0
