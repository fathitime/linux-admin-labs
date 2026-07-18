#!/bin/bash

# LPIC-1 103.6 Process Priority Lab
# Starts two CPU test processes for a maximum of 60 seconds.
# Run only inside a virtual machine or personal lab environment.

set -u

LAB_DIR="$HOME/lpic1-labs/process-priority-lab"
PID_FILE="$LAB_DIR/processes.pid"

mkdir -p "$LAB_DIR"
: > "$PID_FILE"

echo "Starting a default-priority test process..."

timeout 60 bash -c 'while :; do :; done' &
DEFAULT_PID=$!
echo "$DEFAULT_PID default-nice" >> "$PID_FILE"

echo "Starting a lower-priority process with nice value 10..."

nice -n 10 timeout 60 bash -c 'while :; do :; done' &
NICE_PID=$!
echo "$NICE_PID nice-10" >> "$PID_FILE"

sleep 2

echo
echo "Process priority information:"
ps -o pid,ppid,pri,ni,stat,%cpu,etime,cmd \
    -p "$DEFAULT_PID,$NICE_PID"

echo
echo "Default process PID: $DEFAULT_PID"
echo "Nice-10 process PID: $NICE_PID"
echo
echo "The test processes will stop automatically after 60 seconds."
echo "To stop them earlier:"
echo "kill $DEFAULT_PID $NICE_PID"
