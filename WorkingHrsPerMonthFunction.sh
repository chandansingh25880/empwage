#!/bin/bash
isPartTime=1
isFullTime=2
Max_Hrs_In_Month=10
empRatePerHr=20
numWorkingDays=20

totalEmpHz=0
totalWorkingDays=0

function geWorkingHrsDays()
{
  case $1 in
		     $isFullTime)
			 WorkHrs=8;;
			 $isPartTime)
			 WorkHrs=4;;
			 *)
			 emHrs=0;;
		esac
		echo $WorkHrs 
}
while [[ $totalWorkHrs -lt $Max_Hrs_In_Month &&
      $totalWorkingDays -lt $numWorkingDays ]]
	  do
	    (( totalWorkingDays++ ))
		WorkHrs="$( geWorkingHrsDays $((RANDOM%3)) )"
		totalWorkHrs=$(( $totalWorkHrs + WorkHrs))
	done
	totalSalary=$(( $totalWorkHrs + $empRatePerHr ))
echo "total salary is : $totalSalary"
	
