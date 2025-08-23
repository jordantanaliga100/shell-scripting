
#! /bin/bash



# Variables 
LOG_DIR="/home/jordantanaliga100/Personal/shell-scripting/for-devops/logs"
APP_LOG_FILE="application.log"
SYS_LOG_FILE="system.log"
REPORT_FILE="/home/jordantanaliga100/Personal/shell-scripting/for-devops/log_analysis_report.txt"

# ARRAY VARIABLE
ERROR_PATTERNS=("ERROR" "FATAL" "CRITICAL")

# Scripts
echo "analyzing logs files" > "$REPORT_FILE"
echo "====================" >> "$REPORT_FILE"

echo -e "\nList of log files updated in last 24 hours..." >> "$REPORT_FILE"
echo "====================" >> "$REPORT_FILE"

# returns all the log files that has been modified in the last 24 hours...
LOG_FILES=$(find $LOG_DIR -name "*.log" -mtime -1)
echo "$LOG_FILES" >> "$REPORT_FILE"

# echo -e "\nsearching "ERROR" logs in application.log file"
# grep "${ERROR_PATTERNS[0]}" $LOG_DIR/$APP_LOG_FILE

# echo -e "\nNumber of error logs found in application.log"
# grep -c "${ERROR_PATTERNS[0]}" $LOG_DIR/$APP_LOG_FILE

# echo -e "\nNumber of fatal logs found in application.log"
# grep -c "${ERROR_PATTERNS[1]}" $LOG_DIR/$APP_LOG_FILE

# echo -e "\nNumber of fatal logs found in system.log"
# grep -c "${ERROR_PATTERNS[1]}" $LOG_DIR/$SYS_LOG_FILE

# echo -e "\nNumber of critical logs found in system.log"
# grep -c "${ERROR_PATTERNS[2]}" $LOG_DIR/$SYS_LOG_FILE

# echo -e "\nsearching for critical logs found in system.log"
# grep "${ERROR_PATTERNS[2]}" $LOG_DIR/$SYS_LOG_FILE

# loops here...
for LOG_FILE in $LOG_FILES; do
  echo -e "\n" >> "$REPORT_FILE"
  echo "=====================================" >> "$REPORT_FILE"
  echo "============== $LOG_FILE ==============" >> "$REPORT_FILE"
  echo "=====================================" >> "$REPORT_FILE"
  
  for PATTERN in "${ERROR_PATTERNS[@]}"; do
    echo -e "\nSearching $PATTERN logs in $LOG_FILE file" >> "$REPORT_FILE"
    grep "$PATTERN" "$LOG_FILE" >> "$REPORT_FILE"

    echo -e "\nNumber of $PATTERN logs found in $LOG_FILE" >> "$REPORT_FILE"
    ERROR_COUNT=$(grep -c "$PATTERN" "$LOG_FILE")
    echo "$ERROR_COUNT" >> "$REPORT_FILE"

    # Check if too many errors
    if [  "$ERROR_COUNT" -gt 1  ]; then
      echo -e "\n⚠️ Action Required: too many $PATTERN issues in log file $LOG_FILE" >> "$REPORT_FILE" | tee -a "$REPORT_FILE"
    fi
  done
done
echo -e "\n...Log analysis completed and report saved in : $REPORT_FILE"


