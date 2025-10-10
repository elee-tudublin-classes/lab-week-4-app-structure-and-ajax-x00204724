#!/bin/bash

# Count CPU cores, show usage if argument missing, and display system info

# Check if argument is given
if [ -z "$1" ]; then
    echo "Usage: $(basename "$0") [MAX_NUM_CORES]"
    exit 1
fi

# Count number of CPUs
num_cpu=$(nproc)

# Compare CPU count with user input
if [ "$num_cpu" -lt "$1" ]; then
    echo "Error: This system has only $num_cpu CPU(s), but $1 are required."
    exit 1
else
    echo "OK: This system has $num_cpu CPU(s), which meets or exceeds the requirement of $1."
fi

# Display additional system information
echo ""
echo "Additional system info:"
echo "Script run on: $(date)"
echo "Checked system hostname: $(hostname)"

# Explain extra commands
echo ""
echo "'date' shows the current date and time."
echo "'hostname' shows the system's hostname."
