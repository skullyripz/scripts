#!/bin/bash
# Filename: pick-card.sh
# Author: Kenneth Christian
# Created on: 03-20-2017
# -----------------------------

Suites="Clubs
Diamonds
Hearts
Spades"

Denominations="2
3
4
5
6
7
8
9
10
Jack
Queen
King
Ace"

suite=($Suites)
denomination=($Denominations)

num_suites=${#suite[*]}
num_denominations=${#denomination[*]}

echo -n "${denomination[$((RANDOM%num_denominations))]} of "
echo ${suite[$((RANDOM%num_suites))]}

exit 0
