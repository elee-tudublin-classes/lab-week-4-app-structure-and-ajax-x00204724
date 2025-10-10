#!/bin/bash

# Script: lab04_cpu_count_3.sh
# Purpose: Count number of CPU cores and compare with user input ($1)
#          Improved: show usage message if $1 is missing
#          Extra: display system info using 'date' and 'hostname'

# -------------------------------
# Step 1: Check if argument is given
# -------------------------------
if [ -z "$1" ]; then
    echo "Usage: lab04_cpu_count_3.sh [MAX_NUM_CORES]"
    exit 1
fi

# -------------------------------
# Step 2: Count number of CPUs
# -------------------------------
num_cpu=$(nproc)   # preferred modern method
# num_cpu=$(grep -c "processor" /proc/cpuinfo)   # alternative

# -------------------------------
# Step 3: Compare CPU count with user input
# -------------------------------
if [ "$num_cpu" -lt "$1" ]; then
    echo "Error: This system has only $num_cpu CPU(s), but $1 are required."
    exit 1
else
    echo "OK: This system has $num_cpu CPU(s), which meets or exceeds the requirement of $1."
fi

# -------------------------------
# Step 4: Extra commands for Exercise 3
# -------------------------------
echo ""
echo "Additional system info:"
echo "Script run on: $(date)"        # Shows current date and time
echo "Checked system hostname: $(hostname)"  # Shows the machine name

# -------------------------------
# Step 5: Explanation of extra commands
# -------------------------------
echo ""
echo "'date' command displays the current date and time, which helps track when the script was run."
echo "'hostname' command shows the system's hostname, which helps identify which machine the CPU count was checked on."
