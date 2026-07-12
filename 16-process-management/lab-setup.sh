#!/bin/bash

# LPIC-1 103.5 Process Management Lab
# Starts harmless sleep processes for process-management practice.

set -u

LAB_DIR="$HOME/lpic1-labs/process-management-lab"
PID_FILE="$LAB_DIR/test-processes.pid"

mkdir -p "$LAB_DIR"
: > "$PID_FILE"

echo "Starting three safe test processes..."

sleep 600 &
echo "$!" >> "$PID_FILE"

sleep 900 &
echo "$!" >> "$PID_FILE"

sleep 1200 &
echo "$!" >> "$PID_FILE"

echo
echo "Test processes started."
echo "PID file: $PID_FILE"
echo
echo "Processes:"
ps -o pid,ppid,stat,etime,cmd -p "$(paste -sd, "$PID_FILE")"

echo
echo "Use the following command to stop these test processes:"
echo "xargs -r kill < \"$PID_FILE\""
