#!/bin/bash

declare -A results  # Dictionary to store the die roll results
declare -A counts   # Dictionary to store the counts of each number

# Function to roll a die and update the dictionaries
roll_die() {
    local result=$((1 + RANDOM % 6))  # Generate a random number between 1 and 6

    # Store the result in the results dictionary
    results[$result]="${results[$result]} $result"

    # Update the count for the rolled number in the counts dictionary
    counts[$result]=$(( ${counts[$result]} + 1 ))
}

# Roll the die and store the results until one number reaches 10 times
while true; do
    roll_die

    # Check if any number reached 10 times
    for count in "${counts[@]}"; do
        if [ $count -eq 10 ]; then
            break 2  # Break both loops
        fi
    done
done

# Find the number that occurred the maximum times
max_count=0
max_number=0
for number in "${!counts[@]}"; do
    count=${counts[$number]}
    if [ $count -gt $max_count ]; then
        max_count=$count
        max_number=$number
    fi
done

# Find the number that occurred the minimum times
min_count=10
min_number=0
for number in "${!counts[@]}"; do
    count=${counts[$number]}
    if [ $count -lt $min_count ]; then
        min_count=$count
        min_number=$number
    fi
done

echo "Die Roll Results:"
for number in "${!results[@]}"; do
    echo "Number $number: ${results[$number]}"
done

echo "Number $max_number occurred the maximum times: $max_count"
echo "Number $min_number occurred the minimum times: $min_count"
