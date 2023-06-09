#!/bin/bash -x
echo "Enter the single digit number : "
read n
case "$n" in
1) echo "Sunday"
;;
2) echo "Monday"
;;
3) echo "Tuseday"
;;
4) echo "Wednesday"
;;
5) echo "Thursday"
;;
6) echo "Friday"
;;
7) echo "Saturday"
;;
*) echo "This is not single digit number."
;;
esac
