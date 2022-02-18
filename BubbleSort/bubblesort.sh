#!/bin/bash
original_numbers=()
new_numbers=()

print_original_numbers()
{
    original_numbers+=($number)
    echo "${original_numbers[@]}"
    
    indexes=${!original_numbers[@]}
    len=${#original_numbers[@]}
    echo "len $len"
    
    
    
    if [[ len -ge 0 ]] ; then
    
        if [[ original_numbers[-2] -gt original_numbers[-1] ]]; then
          last=${original_numbers[-1]}
          echo "$last"
          secondlast=${original_numbers[-2]}
          
          new_numbers+=($last $secondlast)
          echo "${new_numbers[@]}"
          echo 'swap'
          
          
        else
          new_numbers+=($secondlast $last)
          echo "${new_numbers[@]}"
          echo "$secondlast"
          echo 'noswap'
          
        fi
    fi

}


while :
    read -p "Insert number" number    
do  
    
    re='^[0-9]+$'
    if [[ $number =~ $re ]]; then 
        i=$(( $i + 1 ))
        print_original_numbers "$number" "$i"
    else
        echo "Error: Not a number!"
    fi 
done
