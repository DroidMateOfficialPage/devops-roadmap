#!/bin/bash

LOG_FILE=$1

if [ -z "$LOG_FILE" ]; then
  echo "Usage: ./nginx-log-analyzer <log-file>"
  exit 1
fi

echo "=============================="
echo "Top 5 IP addresses"
echo "=============================="

awk '{print $1}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -5


echo ""
echo "=============================="
echo "Top 5 requested paths"
echo "=============================="

awk -F\" '{print $2}' "$LOG_FILE" | awk '{print $2}' | sort | uniq -c | sort -nr | head -5


echo ""
echo "=============================="
echo "Top 5 status codes"
echo "=============================="

awk '{print $9}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -5


echo ""
echo "=============================="
echo "Top 5 user agents"
echo "=============================="

awk -F\" '{print $6}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -5
