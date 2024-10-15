#!/bin/bash

# Get current timestamp for naming
timestamp=$(date '+%Y%m%d_%H%M%S')

# Rename the log file with timestamp
mv heart_rate_log.txt heart_rate_log.txt_$timestamp

# Create a new empty log file for ongoing monitoring
touch heart_rate_log.txt

echo "Log file archived as heart_rate_log.txt_$timestamp"
