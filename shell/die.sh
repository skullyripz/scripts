#!/bin/bash
# Filename: die.sh
# Author: Kenneth Christian
# Created on: 03-20-2017
# -----------------------------

SPOTS=6

die1=0
die2=0

	let "die1 = $RANDOM % $SPOTS +1" # First die roll
	let "die2 = $RANDOM % $SPOTS +1" # Second die roll

let "throw = $die1 + $die2"
echo "Die1: $die1, Die2: $die2 = $throw"
echo

exit 0
