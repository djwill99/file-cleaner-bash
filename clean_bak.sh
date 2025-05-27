#!/bin/bash

TARGET_DIR="$HOME/Downloads/clean-bak"
LOG_FILE="$TARGET_DIR/deletion.log"
TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

# Start the log with a timestamp
echo "[$TIMESTAMP] Cleaning $TARGET_DIR for old .bak files..." | tee -a "$LOG_FILE"

# Find and delete .bak files older than 3 days
find "$TARGET_DIR" -type f -name "*.bak" -mtime +3 | while read -r file; do
  TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")
  echo "[$TIMESTAMP] Deleting: $file" | tee -a "$LOG_FILE"
  rm -v "$file"
done

TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")
echo "[$TIMESTAMP] Backup cleanup complete ✅" | tee -a "$LOG_FILE"

TARGET_DIR="$HOME/Downloads/clean-bak"
LOG_FILE="$TARGET_DIR/deletion.log"

echo "Cleaning $TARGET_DIR for old .bak files..." | tee -a "$LOG_FILE"

# Use find to locate old .bak files and pass them into a loop
find "$TARGET_DIR" -type f -name "*.bak" -mtime +3 | while read -r file; do
  echo "Deleting: $file" | tee -a "$LOG_FILE"
  rm -v "$file"
done

echo "Backup cleanup complete ✅" | tee -a "$LOG_FILE"

# Set the directory and the log file location
TARGET_DIR="$HOME/Downloads/clean-bak"
LOG_FILE="$TARGET_DIR/deletion.log"

# Start the log
echo "Cleaning $TARGET_DIR for old .bak files..." | tee -a "$LOG_FILE"

# Find and delete .bak files older than 3 days
find "$TARGET_DIR" -type f -name "*.bak" -mtime +3 -exec bash -c '
  for file; do
    echo "Deleting: $file" | tee -a "'"$1"'"
    rm -v "$file"
  done
' _ "$LOG_FILE" {} +

# End the log
echo "Backup cleanup complete ✅" | tee -a "$LOG_FILE"

TARGET_DIR="$HOME/Downloads/clean-bak"
echo "Cleaning $TARGET_DIR for old .bak files..."

# Find and delete .bak files older than 3 days
find "$TARGET_DIR" -type f -name "*.bak" -mtime +3 -exec rm -v {} \;

echo "Backup cleanup complete ✅"

