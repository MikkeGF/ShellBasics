#!/bin/bash

bubblesort()
{
    echo "Your numbers: ${numbers[@]}"
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
echo "sorted numbers: ${numbers[@]}"         
}


append_numbers()
{
    numbers+=($number)
        if [[ $numbercount -eq "5" ]]; then
        echo "Thank you!"
        bubblesort numbers
        fi
    
    # indexes=${!numbers[@]}
    # len=${#numbers[@]}
    # echo "len $len"
    
    
    
    # if [[ len -ge 0 ]] ; then
    
    #     if [[ numbers[-2] -gt numbers[-1] ]]; then
    #       last=${numbers[-1]}
    #       echo "$last"
    #       secondlast=${numbers[-2]}
          
    #       new_numbers+=($last $secondlast)
    #       echo "${new_numbers[@]}"
    #       echo 'swap'
          
          
    #     else
    #       new_numbers+=($secondlast $last)
    #       echo "${new_numbers[@]}"
    #       echo "$secondlast"
    #       echo 'noswap'
          
    #     fi
    # fi

}


while :
    read -p "Insert 5 numbers" number    
do  
    numbercount=$(($numbercount + 1))
    re='^[0-9]+$'
    if [[ $number =~ $re ]]; then 
        i=$(( $i + 1 ))
        
        append_numbers "$number" "$numbercount"

            if [[ $numbercount -eq "5" ]]; then
                exit
        else
        echo "insert $((5 - $numbercount)) more."
    fi
    else
        echo "Error: Not a number!"
    fi 
    
done
