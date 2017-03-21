#!/bin/bash
# Filename: usage-message.sh
# Author: Kenneth Christian
# Created on: 03-20-2017
# -----------------------------

: ${1?"Usage: $0 ARGUMENT"}
#  Script exits here if command-line parameter absent,
#+ with following error message.
#    usage-message.sh: 1: Usage: usage-message.sh ARGUMENT

echo "These two lines echo only if command-line parameter given."
echo "command line parameter = \"$1\""

exit 0
