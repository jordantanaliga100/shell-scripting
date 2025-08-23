
#! /bin/bash



# Variables 
LOG_DIR="/home/jordantanaliga100/Personal/shell-scripting/logs"
APP_LOG_FILE="application.log"
SYS_LOG_FILE="system.log"

# Scripts
echo "analyzing logs files"
echo "===================="

echo -e "\nList of log files updated in last 24 hours..."
echo "===================="

find $LOG_DIR -name "*.log" -mtime -1

echo -e "\nsearching "ERROR" logs in application.log file"
grep "ERROR" $LOG_DIR/$APP_LOG_FILE

echo -e "\nNumber of error logs found in application.log"
grep -c "ERROR" $LOG_DIR/$APP_LOG_FILE



echo -e "\nNumber of fatal logs found in application.log"
grep -c "FATAL" $LOG_DIR/$APP_LOG_FILE


echo -e "\nNumber of fatal logs found in system.log"
grep -c "FATAL" $LOG_DIR/$SYS_LOG_FILE

echo -e "\nNumber of critical logs found in system.log"
grep -c "CRITICAL" $LOG_DIR/$SYS_LOG_FILE

echo -e "\nsearching for critical logs found in system.log"
grep "CRITICAL" $LOG_DIR/$SYS_LOG_FILE



