#!/bin/bash -x
read -p " enter the power number : " n
temp=1
for(( counter=0; counter<n;counter++))
do
	powerValue=$(($temp*2));
	temp=$powerValue;
	table[((counter))]="$powerValue";
done
echo ${table[@]}
