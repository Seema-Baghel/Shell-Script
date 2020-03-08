#!/bin/bash -x

echo "********** Welcome to Employee Wage Computation ***********"

Emp_Wage_PerHr=20
isFullTime=2
isPartTime=1
empCheck=$((RANDOM%3));
case $empCheck in
        $isHalfTime)
        empHr=4;
;;
        $isFullTime)
        empHr=8;
;;
        *)
        empHr=0;
esac
salary=$(( $Emp_Wage_PerHr * $empHr ));
echo $salary;






