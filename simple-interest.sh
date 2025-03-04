#!/bin/bash

# Function to calculate simple interest
calculate_simple_interest() {
    principal=$1
    rate=$2
    time=$3
    interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)
    echo "Simple Interest: $interest"
}

# Main script execution
echo "Simple Interest Calculator"

# Read inputs from the user
read -p "Enter the principal amount: " principal
read -p "Enter the rate of interest (in %): " rate
read -p "Enter the time period (in years): " time

# Validate inputs
if [[ ! $principal =~ ^[0-9]+(\.[0-9]+)?$ ]] || [[ ! $rate =~ ^[0-9]+(\.[0-9]+)?$ ]] || [[ ! $time =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
    echo "Invalid input. Please enter numeric values."
    exit 1
fi

# Calculate and display simple interest
calculate_simple_interest $principal $rate $time
