#!/bin/bash

# Author: bwood
# Date  : 2022-04-09

age=20
limit=18

echo -n "Age is "

if [ $age -gt $limit ] ; then

   echo "over $limit."

else

   echo "under $limit."

fi
