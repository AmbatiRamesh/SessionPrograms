#!/bin/bash

declare -A birth_months

# Function to generate a random birth month between 1 and 12
generate_birth_month() {
    local month=$((1 + RANDOM % 12))
    echo $month
}

# Generate birth months for 50 individuals
for ((i=1; i<=50; i++)); do
    birth_month=$(generate_birth_month)
    birth_months[$birth_month]="${birth_months[$birth_month]} $i"
done

# Print the individuals with birthdays in the same month
for month in "${!birth_months[@]}"; do
    individuals="${birth_months[$month]}"
    echo "Month $month: Individuals $individuals"
done
