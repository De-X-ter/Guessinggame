#include all hidden files
total=`ls -a|wc -l`
input=0

a="echo Too low"
b="echo Too High"

#function
function check {
    if [[ $1 -lt $2 ]]
    then
     echo $a
    elif [[ $1 -gt $2 ]]
    then
     echo $b
    fi
}

#loop
for (( ; ; ))
do
   echo "input the number of files in current directory!"
   read input
   if ! [[ "$input" =~ ^[0-9]+$ ]]
   then
        echo "Sorry input integers only"
   else
      $(check $input $total)
      if [ $input -eq $total ]
      	then
   	    break
      fi 
   fi
done
echo "Congratulations"

