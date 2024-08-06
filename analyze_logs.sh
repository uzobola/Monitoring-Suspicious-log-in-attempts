#!/bin/bash

# ANALYZING LOG FILES FOR SUSPICIOUS ACTIVITIES
#Analyze log files. Loop through keywords to search for suspcious activities and record output in suspicious_activity.log.


 
# Define the log file and output file
log_file="/var/log/auth_log.log"
new_file="/home/ubuntu/suspicious_activity.log"



# Define the keywords to search for 
keywords=( "Unauthorized access" "Could not load host key" "Failed password" "Authentication failure" "Disconnected from" "error:" )
  


# Check if suspicious_activity.log exists, if it does clear the file. If it does not exist, create it.
echo " " 
echo " This script is configured to run daily at 6:00AM ..."
sleep 2
echo " " 
echo "Todays date is $(date)"
echo "... "
echo " "
echo "Preparing suspicious_activity.log for output"
echo "..."
if [ -e "$new_file" ]
then
    > "$new_file"
    echo "File already exists."
    echo " "
else
    # If file does not exist, create it
    touch "$new_file"
    echo "File '$new_file' has been created."
    echo " "
fi
  


# Loop through each keyword and use grep to find lines containing the specified  keywords
echo " "
echo "Analyzing logs for potentially suspicious login attempts"
sleep 3
for keyword in "${keywords[@]}"
do
    grep -i "$keyword" "$log_file" >> "$new_file"
done
  

  
# Script Complete 
echo " ... "
echo " ....."
echo "Suspicious activity log  has been recorded in $new_file"
echo " "
 
