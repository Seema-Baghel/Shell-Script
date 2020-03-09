#!/bin/bash -x

echo "********** Welcome to Employee Wage Computation ***********"

emp_Wage_PerHr=20
isFullTime=2
isPartTime=1
total_Salary=0
noOf_Working_Day=20
noOf_Working_Hr=0
Total_Working_Hr=100
Working_Days=1
while [ $noOf_Working_Hr -le $Total_Working_Hr ] && [ $Working_Days -le $noOf_Working_Day ]
do
        empCheck=$((RANDOM%3))
	case $empCheck in
        	$isFullTime)
        	empHr=8;
	;;
        	$isHalfTime)
        	empHr=4;
	;;
        	*)
        	empHr=0;
	esac
	number=$(($noOf_Working_Hr+$empHr));
	((Working_Days++))
	salary=$(( $emp_Wage_PerHr * $empHr ));
	total_Salary=$(($total_Salary+$salary));
done






