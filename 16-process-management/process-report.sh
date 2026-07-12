#!/bin/bash

# Basic Linux process and resource report

set -u

REPORT_FILE="${1:-process-report.txt}"

{
    echo "Linux Process and Resource Report"
    echo "Generated: $(date)"
    echo "Hostname: $(hostname)"
    echo

    echo "=== System Uptime and Load ==="
    uptime
    echo

    echo "=== Memory Usage ==="
    free -h
    echo

    echo "=== Top Processes by CPU Usage ==="
    ps -eo pid,ppid,user,%cpu,%mem,stat,etime,comm \
        --sort=-%cpu | head -n 11
    echo

    echo "=== Top Processes by Memory Usage ==="
    ps -eo pid,ppid,user,%cpu,%mem,stat,etime,comm \
        --sort=-%mem | head -n 11
    echo

    echo "=== Current User Processes ==="
    ps -u "$USER" -o pid,ppid,stat,etime,cmd
} | tee "$REPORT_FILE"

echo
echo "Report saved to: $REPORT_FILE"
