echo " Welcome to the Employee Wage Computation Program"

isFullTime=1
isPartTime=2
empRatePerHr=20
numWorkingDays=20

totalEmpHr=0
totalWorkingDays=0

function getWorkHrs(){
 while [[ $totalWorkingDays -le $numWorkingDays ]]
 do 
	echo "while loop"
   empCheck=$(($RANDOM%3))
   case $empCheck in 
      $isFullTime)
	 echo "Full Time present inside"
 	empHrs=8
	;;
      $isPartTime)
	 echo "Part Time present inside"
 	empHrs=4
	;;
   *)
	 echo "Absent inside"
	empHrs=0
	;;
  esac
  ((totalWorkingDays++))
  totalEmpHr=$(($totalEmpHr+$empHrs)) 
done

  totalSalary=$(($totalEmpHr+$empRatePerHr))

  echo Total Employee Hours = $totalEmpHr
  echo Total Salary = $totalSalary
}
getWorkHrs

