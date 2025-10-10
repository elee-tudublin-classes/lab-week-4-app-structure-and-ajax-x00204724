#!/bin/bash

# Count number of CPU cores and compare with user input, show usage if missing

# Check if user supplied an argument
if [ -z "$1" ]; then
    echo "Usage: $(basename "$0") [MAX_NUM_CORES]"
    exit 1
fi

# Get the number of CPUs
num_cpu=$(nproc)

# Compare with the required number
if [ "$num_cpu" -lt "$1" ]; then
    echo "Error: This system has only $num_cpu CPU(s), but $1 are required."
    exit 1
else
    echo "OK: This system has $num_cpu CPU(s), which meets or exceeds the requirement of $1."
fi
