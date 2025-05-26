#!/bin/bash

echo "System Information"
echo

echo "CPU Load:"
uptime | awk '{print "Load Average: " $(NF-2)", "$(NF-1)", "$NF}'
echo

echo "Memory Usage:"
free -h | awk '/Mem:/ {print "Used: "$3" / Total: "$2}'
echo

echo "Disk Usage:"
df -h / | awk 'NR==2 {print $1" -> Used: "$3" / "$2" ("$5")"}'
echo

echo "Uptime:"
uptime -p
