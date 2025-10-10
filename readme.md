# Lab 04 - CPU Count Scripts

This lab focuses on writing Bash scripts to count the number of CPU cores on a Linux system and validate against user input. The lab progresses through three exercises, each adding more functionality and error handling.

In **Exercise 1**, the script `lab04_cpu_count.sh` counts the number of CPU cores and compares it to the user-provided argument `$1`. If the number of CPUs is less than `$1`, it prints an error and exits. Otherwise, it prints an OK message.  

**Example Usage:**
```bash
./lab04_cpu_count.sh 4

In Exercise 2, the script lab04_cpu_count_2.sh adds a check to ensure the user provides $1. If no argument is given, it prints a usage message:

Usage: lab04_cpu_count_2.sh [MAX_NUM_CORES]

Otherwise, it behaves like Exercise 1.
./lab04_cpu_count_2.sh           # Shows usage message
./lab04_cpu_count_2.sh 4         # Checks CPU cores

In Exercise 3, the script lab04_cpu_count_3.sh adds two additional Bash commands: date to display the current date and time when the script is run, and hostname to display the system hostname. This provides more context about when and on which system the script was executed.

Example Output:

OK: This system has 8 CPU(s), which meets or exceeds the requirement of 4.

Additional system info:
Script run on: Fri Oct 10 15:20:30 UTC 2025
Checked system hostname: my-vm-instance

'date' command displays the current date and time, which helps track when the script was run.
'hostname' command shows the system's hostname.








