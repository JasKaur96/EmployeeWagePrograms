
isFullTime=1
isPartTime=2
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



