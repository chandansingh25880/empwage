#! /bin/bash
IS_part_time=1;
IS_full_time=2;
Max_Hrs_In_Month=10;
Emp_Rate_Per_Hr=20;
NUM_Working_Days=20;

totalWorkHours=0;
totalWorkingDays=0;
declare -A empDailyWage; 
function getworkinHours()
{ 
  case $1 in
  $IS_full_time)
  workHours=8;;
  $IS_part_time)
  workHours=4;;
  *)
  workHours=0;;
  esac
  echo $workHours
}
function calDailyWage()
{
  local workHours=$1
  wage=$(($workHours*Emp_Rate_Per_Hr))
  echo $wage
}
while [[ $totalWorkHours -lt $Max_Hrs_In_Month &&
         $totalWorkingDays -lt $NUM_Working_Days ]]
	  do
	  (( totalWorkingDays++));
	  workHours="$( getworkinHours $((RANDOM%3)) )"
	  totalWorkHours=$(( $totalWorkHours + workHours ))
	  empDailyWage["Day" $totalWorkingDays]="$( calDailyWage $workHours)"
	  done
	  totalSalary="$( calDailyWage $totalWorkHours )"
	  echo "Daily Wage " ${empDailyWage[@]}
	  echo "All key" ${!empDailyWage[@]}

