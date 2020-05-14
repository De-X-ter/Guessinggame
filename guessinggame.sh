total=`ls -lrt|wc -l`
input=0

#function
function check {
    if [[ $1 -lt $2 ]]
    then
    echo "echo Low"
    elif [[ $1 -gt $2 ]]
    then
    echo "echo High"
    fi
}

#loop
for (( ; ; ))
do
   echo "input the number of files in current directory!"
   read input
   $(check $input $total)
   if [ $input -eq $total ]
   then
   	break
   fi
done
echo "Right"
