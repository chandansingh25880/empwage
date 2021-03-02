#!/bin/bash
isPartTime=1
isFullTime=2
Max_Hrs_In_Month=10
empRatePerHr=20
numWorkingDays=20

totalEmpHz=0
totalWorkingDays=0

while [[ $totalEmpHz -lt $Max_Hrs_In_Month &&
      $totalWorkingDays -lt $numWorkingDays ]]
	  do
	    (( totalWorkingDays++ ))
		empCheck=$((RANDOM%3))
		case $empCheck in
		     $isFullTime)
			 emHrs=8;;
			 $isPartTime)
			 emHrs=4;;
			 *)
			 emHrs=0;;
		esac
		totalEmpHz=$(( ! $totalEmpHz + $emHrs ))
	done
	totalSalary=$(( $totalEmpHz * $empRatePerHr))
echo ="Total salay is : $totalSalary"
echo="Total Working Days : $totalWorkingDays"