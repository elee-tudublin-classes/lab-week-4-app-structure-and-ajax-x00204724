# Lab 04 - CPU Count Scripts

This lab focuses on writing Bash scripts to count the number of CPU cores on a server and validate against user input. The lab progresses through three exercises, each adding more functionality and error handling.

---

## Exercise 1: Basic CPU Count

- **File:** `lab04_cpu_count.sh`
- **Functionality:** Counts the number of CPU cores and compares it to the user-provided argument `$1`.
- **Behavior:**
  - If the number of CPUs is less than `$1`, prints an error and exits.
  - Otherwise, prints an OK message.

**Example Usage:**
```bash
./lab04_cpu_count.sh 4

Usage: lab04_cpu_count_2.sh [MAX_NUM_CORES]

./lab04_cpu_count_2.sh           # Shows usage message
./lab04_cpu_count_2.sh 4         # Checks CPU cores

OK: This system has 8 CPU(s), which meets or exceeds the requirement of 4.

Additional system info:
Script run on: Fri Oct 10 15:20:30 UTC 2025
Checked system hostname: my-vm-instance

'date' command displays the current date and time, which helps track when the script was run.
'hostname' command shows the system's hostname, which helps identify which machine the CPU count was checked on.





