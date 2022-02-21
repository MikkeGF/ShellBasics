#!/bin/bash
# Asks 5 numbers from user. Sort them from smallest to biggest.
bubblesort()
{
echo "
---------------------------
Your numbers: ${numbers[@]}
---------------------------
"
    n=${#numbers[@]}
    for i in `seq 0 $n` 
    do
        for (( j=n; j > i; j-=1 ))
        do
            if [[ ${numbers[j-1]} -gt ${numbers[j]} ]] ; then
                swap=${numbers[j]}
                numbers[j]=${numbers[j-1]}
                numbers[j-1]=$swap
            fi   
        done   
    done
echo "
---------------------------
Sorted numbers: ${numbers[@]}
---------------------------
"         
}

while :
    read -p "Insert 5 numbers" number    
do  
    numbercount=$(($numbercount + 1))
    re='^[0-9]+$'
    if [[ $number =~ $re ]]; then 
        numbers+=($number)
            if [[ $numbercount -eq "5" ]]; then
                bubblesort
                exit
            else
            echo -e "insert $((5 - $numbercount)) more."      
            fi
    else
        echo "Error: Not a number!"
    fi    
done
