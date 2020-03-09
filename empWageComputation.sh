#!/bin/bash -x

echo "********** Welcome to Employee Wage Computation ***********"

isFullTime=1;
isPartTime=2;
total_salary=0;
emp_Rate_PerHr=20;
num_Working_Days=20;
num_Working_Hrs=0;
Total_Working_Hrs=100;
Working_days=1;
function getWorkHr(){
 #empCheck=$((RANDOM%3));

	case  $empCheck in
	$isFullTime)
	empHr=8;
 ;;
	$isPartTime)
	empHr=4;
;;
	*)
        empHr=0;
;;
	esac
	echo $empHr
}
function getEmpwage(){
	
	local empHr=$1
	return $(($empHr*$emp_Rate_PerHr))

}
while [ $num_Working_Hrs -le $Total_Working_Hrs  ] && [ $Working_days -le $num_Working_Days  ]
do
        empCheck=$((RANDOM%3));
	empHr="$(getWorkHr $empCheck)"
        numWorkingHrs=$(($num_Working_Hrs+$empHr));
        ((Working_days++))
        salary=$(($emp_Rate_PerHr*$empHr))
	getEmpwage $empHr
        #total_salary=$?
        total_salary=$(($total_salary+$salary));
done
 echo "total salary:$total_salary"
