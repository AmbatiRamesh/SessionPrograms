#!/bin/bash

# Function to generate a random 3-digit number
generate_random_number() {
  number=$((RANDOM % 900 + 100))
  echo $number
}

# Generate 10 random numbers and store them in an array
numbers=()
for ((i = 0; i < 10; i++)); do
  random_number=$(generate_random_number)
  numbers+=($random_number)
done

echo "Generated Numbers: ${numbers[@]}"

# Sort the array in ascending order
sorted_numbers=($(printf '%s\n' "${numbers[@]}" | sort -n))

echo "Sorted Numbers: ${sorted_numbers[@]}"

# Find the 2nd largest element
second_largest=${sorted_numbers[-2]}

echo "Second Largest Element: $second_largest"

# Find the 2nd smallest element
second_smallest=${sorted_numbers[1]}

echo "Second Smallest Element: $second_smallest"
