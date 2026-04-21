#!/bin/bash

# --- Simple System Audit Script ---
# Created by: barrieabdul7-lgtm

echo "--- STARTING SYSTEM AUDIT ---"
date

echo ""
echo "1. Current User:"
whoami

echo ""
echo "2. System Uptime (How long the computer has been on):"
uptime -p

echo ""
echo "3. Memory Usage (Sorted by top consumers):"
# Using the pipe logic you learned!
ps -eo pid,ppid,cmd,%mem --sort=-%mem | head -n 6

echo ""
echo "4. Checking Disk Space:"
df -h | grep '^/dev/'

echo ""
echo "--- AUDIT COMPLETE ---"
