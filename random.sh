#!/bin/bash
 
echo "Welcome to Employee Wage Computation Program..."

isPresent=1
ischeck=$((RANDOM%2))
if [ $isPresent -eq $ischeck ]
then
echo "Present"
else
echo "Absent"
fi
