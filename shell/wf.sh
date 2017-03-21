#!/bin/bash
# Filename: wf.sh
# Author: Kenneth Christian
# Created on: 03-20-2017
# Usage: Crude word frequency analysis on a text file
# -----------------------------

# Check for input on the command line
ARGS=1
E_BADARGS=85
E_NOFILE=86

if [ $# -ne "$ARGS" ]	# Checking argument count
then
	echo "Usage: `basename $0` filename"
	exit $E_BADARGS
fi

if [ ! -f "$1" ]	# Checking if file exists
then
	echo "File \"$1\" does not exist."
	exit $E_NOFILE
fi


########################################################
# main ()
sed -e 's/\.//g'  -e 's/\,//g' -e 's/ /\
/g' "$1" | tr 'A-Z' 'a-z' | sort | uniq -c | sort -nr
#			    =========================
#			    Frequency of occurrence

#  Filter out periods and commas, and
#+ change space between words to linefeed,
#+ then shift charaters to lowercase, and
#+ finally prefix occurrence count and sort numerically

exit 0
