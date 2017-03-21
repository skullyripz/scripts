#!/bin/bash
# Filename: list-glob.sh
# Author: Kenneth Christian
# Created on: 03-20-2017
# -----------------------------

echo

for file in *
#           ^  Bash performs filename expansion
#	       on expressions that globbing recognizes.
#+
do
  ls -l "$file"	# Lists all files in $PWD
  # Wild card ("*") does not match dot-files when globbing
done

echo; echo

exit 0
