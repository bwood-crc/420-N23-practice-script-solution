#!/bin/bash

# Author: bwood
# Date  : 2022-04-09

if [ $# -gt 2 ] ; then
  echo "Sorry you need to specify two parameters, the filename and the number of copied."
  exit
fi

if [[ $2 =~ [^0-9] ]] ; then
  echo "The second parameter must be a number!"
  exit
fi

new_filename=$1
file_count=$2

for ((f=1;f<=file_count;f++))
do

  prefix=""
  if [ $f -lt 10 ] ; then
     prefix="00"
  elif [ $f -lt 100 ] ; then
     prefix="0"
  fi

  file_name=$new_filename.$prefix$f
  touch $file_name

done
