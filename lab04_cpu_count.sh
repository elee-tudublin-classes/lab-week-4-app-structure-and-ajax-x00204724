#!/bin/bash

# Script: lab04_cpu_count.sh
# Purpose: Count number of CPU cores and compare with user input ($1)

# Get the number of CPUs (using nproc or /proc/cpuinfo)
num_cpu=$(nproc)   # preferred modern method
# num_cpu=$(grep -c "processor" /proc/cpuinfo)   # alternative method

# Compare with the required number ($1)
if [ "$num_cpu" -lt "$1" ]; then
    echo "Error: This system has only $num_cpu CPU(s), but $1 are required."
    exit 1
else
    echo "OK: This system has $num_cpu CPU(s), which meets or exceeds the requirement of $1."
fi
