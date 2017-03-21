#!/bin/bash
# Filename: quote-fetch.sh
# Author: Kenneth Christian
# Created on: 03-20-2017
# Use: Download a stock quote
# -----------------------------

E_NOPARAMS=86

if [ -z "$1" ]	# Must specify a stock (symbol) to fetch.
  then echo "Usage: `basename $0` stock-symbol"
  exit $E_NOPARAMS
fi

stock_symbol=$1

file_suffix=.html
# Fetches HTML file, so name it appropriately.
URL='http://finance.yahoo.com/q?s='
# Yahoo finance board, with stock query suffix

# ---------------------------------------------------------------
wget -O ${stock_symbol}${file_suffix} "${URL}${stock_symbol}"
# ---------------------------------------------------------------

exit $?
