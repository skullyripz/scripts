#!/bin/bash
# Filename: envvar.sh
# Author: Kenneth Christian
# Created on: 03-20-2017
# -----------------------------

: ${HOSTNAME?} ${USER?} ${HOME?}
  echo
  echo "Name of the machine is $HOSTNAME."
  echo "You are $USER."
  echo "Your home directory is $HOME."
  echo
  echo "If you are reading this message,"
  echo "critical environmental variables have been set."
  echo
  echo

exit 0
