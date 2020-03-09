#!/bin/bash -x

echo "********** Welcome to Employee Wage Computation ***********"

isFullTime=2;
isHalfTime=1;
totalSalary=0;
empRatePerHr=20;
noOfWorkingDay=20
for (( day=1; day<=$noOfWorkingDay; day++ ))
do
        randomCheck=$((RANDOM%3))
case $randomCheck in
        $isFullTime)
        empHr=8;
;;
        $isHalfTime)
        empHr=4;
;;
        *)
        empHr=0;
esac
salary=$(( $empRatePerHr * $empHr ));
totalSalary=$(($totalSalary+$salary));
done








