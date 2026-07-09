#!/bin/bash

# LPIC-1 103.3 Basic File Management Lab Setup
# This script creates a safe practice directory for file management commands.

LAB_DIR="$HOME/lpic1-labs/file-management-lab"

echo "Creating lab directory at: $LAB_DIR"

mkdir -p "$LAB_DIR"/{documents,logs,backups,archives,temp}

cd "$LAB_DIR" || exit 1

touch documents/report.txt
touch documents/notes.txt
touch documents/todo.md
touch logs/system.log
touch logs/app.log
touch temp/file1.tmp
touch temp/file2.tmp

echo "Linux file management practice" > documents/report.txt
echo "LPIC-1 notes" > documents/notes.txt
echo "ERROR: sample application error" > logs/app.log
echo "INFO: system started successfully" > logs/system.log

mkdir -p projects/project-a/src
mkdir -p projects/project-b/src

touch projects/project-a/src/app.py
touch projects/project-b/src/main.sh

echo "Lab environment created successfully."
echo "Go to: $LAB_DIR"
