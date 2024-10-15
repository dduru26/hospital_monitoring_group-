#!/bin/bash

# Prompt for device name
read -p "Enter the device name: " device_name

# Function to generate a random heart rate between 40 and 100
generate_heart_rate() {
    echo $((RANDOM % 61 + 40))
}

# Log file where heart rate data will be saved
log_file="heart_rate_log.txt"

# Infinite loop to record data every second
while true; do
    # Get current timestamp
    timestamp=$(date +"%Y-%m-%d %H:%M:%S")
    
    # Simulate heart rate
    heart_rate=$(generate_heart_rate)
    
    # Write the data to the log file
    echo "$timestamp $device_name $heart_rate" >> $log_file
 
    # Wait for 1 second
    sleep 1
done &

# Display the process ID
echo "Heart rate monitoring started. Process ID: $!"
