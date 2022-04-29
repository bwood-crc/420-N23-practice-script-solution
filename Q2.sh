#!/bin/bash

# Author: bwood
# Date  : 2022-04-09

continue=1

while [[ $continue =~ ^[Yy] ]] || [[ $continue -eq 1 ]]
do

	echo "The date and time is `date`"

	read -p "Do you want to continue?  [Enter 'Y' or '1'] : " continue

done
