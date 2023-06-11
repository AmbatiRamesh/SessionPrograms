#!/bin/bash -x
declare -a array

read -p "Enter no of elements in the array: " n
echo "enter $n elements"

for(( i = 0; i < n; i++ ))
do
    read x
    array[i]=$x
done
echo "The numbers entered are: ${array[@]}"

totalSum=0

for(( i = 0; i < n - 2; i++ ))
do
    for(( j = i + 1; j < n - 1; j++ ))
    do
        for(( k = j + 1; k < n; k++ ))
        do
            if(( ${array[i]} + ${array[j]} + ${array[k]} == $totalSum))
            then
                echo "The triplet is: ${array[i]} ${array[j]} ${array[k]}"
            fi
        done
    done
done
