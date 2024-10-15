#!/bin/bash
# Replace $ with your group number
mkdir -p archived_logs_group_11
mv heart_rate_log.txt_* archived_logs_group_11/

# Define remote server details (adjust as per your environment)
remote_host="your_remote_host"
remote_user="your_remote_user"
scp archived_logs_group_11/* $remote_user@$remote_host:/home/
echo "Backup complete."
