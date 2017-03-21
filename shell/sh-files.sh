#!/bin/bash
# Filename: sh-files.sh
# Author: Kenneth Christian
# Created on: 03-20-2017
# -----------------------------

filename="*.sh"

for file in $filename
do
  echo "Contents of $file"
  echo "---"
  cat "$file"
  echo
  echo
done
