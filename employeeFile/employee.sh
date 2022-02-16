#!/bin/bash
# asks employee names. Writes them to employees.csv file. If inserted value is "0" script breaks and print empoloyees.

# print ID:s and names to csv.file.
print_csv()
{  
    if [ ! $name = '0' ]; then  
    echo $name | awk '{printf '$i' ":" $name ";"}' >> employee.csv
    fi
}
# print employees to command line at the end.
print_employees()
{
   echo | awk 'BEGIN{FS=OFS=";"}{for(i=1;i<=NF;i++) print $i}' employee.csv
}

i=0
while :
    read -p "What is your name?" name
    
do  
    ((i++))
    print_csv "$name" "$i"
    if [ $name = '0' ]; then
    print_employees
    break
    fi
done