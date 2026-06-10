#!/bin/bash

echo "===== SERVER STATS ====="

echo ""
echo "Disk Usage:"
df -h

echo ""
echo "Memory Usage:"
free -h

echo ""
echo "Top 5 CPU Processes:"
ps aux --sort=-%cpu | head -6

echo ""
echo "Top 5 Memory Processes:"
ps aux --sort=-%mem | head -6
