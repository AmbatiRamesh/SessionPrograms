#!/bin/bash -x

# Function to generate a random 3-digit number
function random(){
  number=$((RANDOM % 900 + 100))
  echo $number
}
random $number

# Generate 10 random numbers and store them in an array
numbers=()
for ((i = 0; i < 10; i++)); do
  random_number=$(random)
  numbers+=($random_number)
done

echo "Generated Numbers: ${numbers[@]}"

# Find the 2nd largest element
largest=${numbers[0]}
second_largest=${numbers[0]}

for ((i = 1; i < ${#numbers[@]}; i++)); do
  if ((numbers[i] > largest)); then
    second_largest=$largest
    largest=${numbers[i]}
  elif ((numbers[i] > second_largest && numbers[i] != largest)); then
    second_largest=${numbers[i]}
  fi
done

echo "Second Largest Element: $second_largest"

# Find the 2nd smallest element
smallest=${numbers[0]}
second_smallest=${numbers[0]}

for ((i = 1; i < ${#numbers[@]}; i++)); do
  if ((numbers[i] < smallest)); then
    second_smallest=$smallest
    smallest=${numbers[i]}
  elif ((numbers[i] < second_smallest && numbers[i] != smallest)); then
    second_smallest=${numbers[i]}
  fi
done

echo "Second Smallest Element: $second_smallest"
