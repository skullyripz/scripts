#!/bin/bash
#  gcd.sh
#  Author: Kenneth Christian
#  Created on: 03-20-2017
#  Usage:
#  Greatest Common Divisor: Uses Euclid's algorithm
#
#  Euclid's algorithm uses successive division.
#    In each pass,
#+     dividend <--- divisor
#+     divisor <--- remainder
#+   until remainder = 0.
#    The gcd = dividend, on the final pass.
# -----------------------------------------------------------


# Argument check
ARGS=2
E_BADARGS=85

if [ $# -ne "$ARGS" ]
then
	echo "Usage: `basename $0` first-number second-number"
	exit $E_BADARGS
fi
#-------------------------------------------------------------

gcd ()
{
	dividend=$1
	divisor=$2
	
	remainder=1
	
	
	until [ "$remainder" -eq 0 ]
	do
		let "remainder = $dividend % $divisor"
		dividend=$divisor	# Now repeat with 2 smallest numbers
		divisor=$remainder
	done				# Euclid's algorithm
}

gcd $1 $2

echo; echo "GCD of $1 and $2 = $dividend"; echo

exit 0

