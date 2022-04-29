#!/bin/bash

# Author: bwood
# Date  : 2022-04-09

input=$1

if [ -z $input ] ; then
  echo "Sorry you must supply a word"
  exit
fi

if [ $# -gt 1 ] ; then
  echo "Sorry you need to specify only one parameter"
  exit
fi

len=$(echo $input | wc -c)

# The newline character is part of the word, so we subtract one from the count.
let len=len-1

echo $len
