echo " Welcome to the Employee Wage Computation Program"

isFullTime=1
isPartTime=2
maxHrsInMonth=4
empRatePerHr=20
numWorkingDays=20
totalEmpHr=0
totalWorkingDays=0

randomCheck=$(($RANDOM%3))
if [[ $randomCheck -eq $isFullTime ]]
then
        echo "Full Time present"
elif [[ $randomCheck -eq $isPartTime ]]
then
        echo "Part Time presnt"
else
        echo "Absent "
fi

function getWorkHrs(){
   empCheck=$(($RANDOM%3))
   case $empCheck in 
      $isFullTime)
	 echo "Full Time present"
 	emphrs=8
	;;
      $isPartTime)
	 echo "Part Time present"
 	emphrs=4
	;;
   *)
	 echo "Absent"
	empHrs=0
	;;
  esac
  
  salary=$(($emphrs+$empRatePerHr));
  totalSalary=$(($totalSalary+$salary));
  echo Salary = $salary
  echo Total Salary = $totalSalary
}

 getWorkHrs
