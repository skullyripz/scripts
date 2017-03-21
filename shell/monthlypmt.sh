#!/bin/bash
# Filename: monthlypmt.sh
# Author: Kenneth Christian
# Created on: 03-20-2017
# Use: Calculates monthly payment on a mortgage
# -----------------------------


echo
echo "Given the principal, interest rate, and term of a mortgage,"
echo "calculate the monthly payment."

bottom=1.0

echo
echo -n "Enter a principal (no commas) "
read principal
echo -n "Enter interest rate (percent) "
read interest_r
echo -n "Enter term (months) "
read term


interest_r=$(echo "scale=9; $interest_r/100.0" | bc)	# Convert to decimal
		#	    ^^^^^^^^^^^^^^^^^	Divide by 100.
		# "scale" determines how many decimal places.

interest_rate=$(echo "scale=9; $interest_r/12 + 1.0" | bc)


top=$(echo "scale=9; $principal*$interest_rate^$term" | bc)
	#	     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
	#	     Standard formula for figuring interest.

echo; echo "Please be patient. This may take a while."

let "months = $term - 1"
# ==========================================================
for ((x=$months; x > 0; x--))
do
  bot=$(echo "scale=9; $interest_rate^$x" | bc)
  bottom=$(echo "scale=9; $bottom+$bot" | bc)
done
# ==========================================================


payment=$(echo "scale=2; $top/$bottom" | bc)

echo
echo "monthly payment = \$$payment"	# Echo dollar sign in front of amount.
echo

exit 0
