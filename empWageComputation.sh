#!/bin/bash -x

echo "********** Welcome to Employee Wage Computation ***********"

Emp_Wage_PerHr=20
isFullTime=1
randomCheck=$((RANDOM%2));
if [ $isFullTime -eq $randomCheck ];
then
        empHr=8;
else
        empHr=0;
fi
salary=$(( $Emp_Wage_PerHr * $empHr ));
echo $salary;






