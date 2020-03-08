#!/bin/bash -x

echo "********** Welcome to Employee Wage Computation ***********"

Emp_Wage_PerHr=20
isFullTime=1
isPartTime=2
randomCheck=$((RANDOM%3));
if [ $isFullTime -eq $randomCheck ];
then
        empHr=8;
elif [ $isPartTime -eq $randomCheck ];
then
        empHr=4;
else
	empHr=0;
fi
salary=$(( $Emp_Wage_PerHr * $empHr ));
echo $salary;






