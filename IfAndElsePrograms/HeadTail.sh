A=$((RANDOM%10))
echo $A
B=`expr $A % 2`
if [ $B -eq 0 ]
then
    echo "Head"
else
    echo "Tail"
fi
