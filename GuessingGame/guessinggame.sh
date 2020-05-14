#!/usr/bin/env bash
# File: guessinggame.sh

total=($(ls -d */))
count=${#total[@]}
guess=0

function check {
    # Usage of an if statement
    if [[ $1 -lt $2 ]]
    then
    echo "echo Low"
    elif [[ $1 -gt $2 ]]
    then
    echo "echo High"
    fi
}

# Usage of a loop
while [ $guess -ne $count ]
do
echo "Guess the number of directories!"
# Collecting user response
read guess

$(check $guess $count)
done
echo "You got it right!  Congrats!"
