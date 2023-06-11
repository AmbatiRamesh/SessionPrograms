is_prime() {
  number=$1

  if ((number < 2)); then
    echo "$number is not a prime number."
    return
  fi

  for ((i = 2; i <= number / 2; i++)); do
    if ((number % i == 0)); then
      echo "$number is not a prime number."
      return
    fi
  done

  echo "$number is a prime number."
}

# Read the number from the user
read -p "Enter a number: " input_number

# Validate the input
if ! [[ $input_number =~ ^[0-9]+$ ]]; then
  echo "Error: Invalid input. Please enter a positive integer."
  exit 1
fi

# Call the function to check if the number is prime
is_prime "$input_number"
