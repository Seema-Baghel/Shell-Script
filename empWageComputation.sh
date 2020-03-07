#!/bin/bash -x

echo "********** Welcome to Employee Wage Computation ***********"

isPresent=0
randomCheck=$((RANDOM%2));
if [ $randomCheck -eq 1 ];
then
        isPresent="Present";
else
        isPresent="Absent";
fi
echo $isPresent;







