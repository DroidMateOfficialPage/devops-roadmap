#!/bin/bash

LOG_DIR=$1

if [ -z "$LOG_DIR" ]; then
  echo "Usage: log-archive <log-directory>"
  exit 1
fi

TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

ARCHIVE_DIR="./archives"
mkdir -p "$ARCHIVE_DIR"

tar -czf "$ARCHIVE_DIR/logs_archive_$TIMESTAMP.tar.gz" "$LOG_DIR"

echo "Archived $LOG_DIR at $TIMESTAMP" >> archive.log

echo "Backup completed: logs_archive_$TIMESTAMP.tar.gz"
