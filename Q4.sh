#!/bin/bash

# Author: bwood
# Date  : 2022-04-09

if [ $# -eq 0 ] ; then
  echo "Sorry you need to specify one or more parameters, a collection of numbers."
  exit
fi

if [[ "$@" =~ "[^0-9]" ]] ; then
  echo "The parameters must be numbers separated by spaces!"
  exit
fi

number_list=$@

sum=0

for n in $number_list
do
  let sum=sum+n
done

echo "The sum is "$sum

let average=sum/$#

echo "The average using bash is "$average

average_py=$(python3 -c "print($sum/$#)")

echo "The average using Python is "$average_py

