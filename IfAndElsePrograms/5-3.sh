num1=$((($RANDOM%900)+100));
num2=$((($RANDOM%900)+100));
num3=$((($RANDOM%900)+100));
num4=$((($RANDOM%900)+100));
num5=$((($RANDOM%900)+100));
echo $num1
echo $num2
echo $num3
echo $num4
echo $num5
if [ $num1 -gt $num2 ] && [ $num1 -gt $num3 ] && [ $num1 -gt $num4 ] && [ $num1 -gt $num5 ]
then
    echo $num1
elif [ $num2 -gt $num1 ] && [ $num2 -gt $num3 ] && [ $num2 -gt $num4 ] && [ $num2 -gt $num5 ]
then
    echo $num2
elif [ $num3 -gt $num1 ] && [ $num3 -gt $num2 ] && [ $num3 -gt $num4 ] && [ $num3 -gt $num5 ]

then
    echo $num3
elif [ $num4 -gt $num1 ] && [ $num4 -gt $num2 ] && [ $num4 -gt $num3 ] && [ $num4 -gt $num5 ]

then
    echo $num4

elif[ $num5 -gt $num1 ] && [ $num5 -gt $num2 ] && [ $num5 -gt $num3 ] && [ $num5 -gt $num4 ]

    echo $num5
fi
echo "Maximum number is :  $max"
echo "Minimum number is :  $min"
