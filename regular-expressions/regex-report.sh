#!/bin/bash

# LPIC-1 103.7 Regular Expression Log Report

set -euo pipefail

LOG_FILE="${1:-sample-data/app.log}"

if [[ ! -f "$LOG_FILE" ]]; then
    echo "Error: log file not found: $LOG_FILE" >&2
    exit 1
fi

echo "Regular Expression Log Report"
echo "File: $LOG_FILE"
echo "Generated: $(date)"
echo

echo "=== Log Level Counts ==="
grep -Eo 'INFO|WARNING|ERROR|DEBUG' "$LOG_FILE" \
    | sort \
    | uniq -c \
    | sort -nr

echo
echo "=== Errors and Warnings ==="
grep -nE 'WARNING|ERROR' "$LOG_FILE" || true

echo
echo "=== IPv4-like Addresses ==="
grep -Eo '([[:digit:]]{1,3}\.){3}[[:digit:]]{1,3}' \
    "$LOG_FILE" || true

echo
echo "=== Usernames ==="
grep -Eo 'user [[:alnum:]_.-]+' "$LOG_FILE" || true
