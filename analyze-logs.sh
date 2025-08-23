
#! /bin/bash



# Variables 
LOG_DIR="/home/jordantanaliga100/Personal/shell-scripting/logs"
APP_LOG_FILE="application.log"
SYS_LOG_FILE="system.log"

# ARRAY VARIABLE
ERROR_PATTERNS=("ERROR" "FATAL" "CRITICAL")

# Scripts
echo "analyzing logs files"
echo "===================="

echo -e "\nList of log files updated in last 24 hours..."
echo "===================="

# returns all the log files that has been modified in the last 24 hours...
LOG_FILES=$(find $LOG_DIR -name "*.log" -mtime -1)
echo "$LOG_FILES"

echo -e "\nsearching "ERROR" logs in application.log file"
grep "${ERROR_PATTERNS[0]}" $LOG_DIR/$APP_LOG_FILE

echo -e "\nNumber of error logs found in application.log"
grep -c "${ERROR_PATTERNS[0]}" $LOG_DIR/$APP_LOG_FILE

echo -e "\nNumber of fatal logs found in application.log"
grep -c "${ERROR_PATTERNS[1]}" $LOG_DIR/$APP_LOG_FILE

echo -e "\nNumber of fatal logs found in system.log"
grep -c "${ERROR_PATTERNS[1]}" $LOG_DIR/$SYS_LOG_FILE

echo -e "\nNumber of critical logs found in system.log"
grep -c "${ERROR_PATTERNS[2]}" $LOG_DIR/$SYS_LOG_FILE

echo -e "\nsearching for critical logs found in system.log"
grep "${ERROR_PATTERNS[2]}" $LOG_DIR/$SYS_LOG_FILE

# loops here...
for LOG_FILE in $LOG_FILES; do
  echo -e "\nsearching "ERROR" logs in "$LOG_FILE" file"
  grep "${ERROR_PATTERNS[0]}" "$LOG_FILE"

  echo -e "\nNumber of error logs found in "$LOG_FILE""
  grep -c "${ERROR_PATTERNS[0]}" "$LOG_FILE"

  echo -e "\nNumber of fatal logs found in "$LOG_FILE""
  grep -c "${ERROR_PATTERNS[1]}" "$LOG_FILE"

  echo -e "\nNumber of fatal logs found in "$LOG_FILE""
  grep -c "${ERROR_PATTERNS[1]}" "$LOG_FILE"

  echo -e "\nNumber of critical logs found in "$LOG_FILE""
  grep -c "${ERROR_PATTERNS[2]}" "$LOG_FILE"

  echo -e "\nsearching for critical logs found in "$LOG_FILE""
  grep "${ERROR_PATTERNS[2]}" "$LOG_FILE"
done
