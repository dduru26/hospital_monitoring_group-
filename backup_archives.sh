#!/bin/bash
# Replace $ with your group number
mkdir -p archived_logs_group_11
mv heart_rate_log.txt_* archived_logs_group_11/

# Define remote server details (adjust as per your environment)
remote_host="7377d776d308.079e7915.alu-cod.online"
remote_user="7377d776d308"
scp -r archived_logs_group_11/ $remote_user@$remote_host:/home/
echo "Backup complete."
