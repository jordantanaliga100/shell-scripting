#! /bin/bash

echo "analyzing logs files"
echo "===================="

echo -e "\nList of log files updated in last 24 hours..."
echo "===================="

find /home/jordantanaliga100/Personal/shell-scripting/logs -name "*.log" -mtime -1

echo -e "\nsearching "ERROR" logs in application.log file"
grep "ERROR" /home/jordantanaliga100/Personal/shell-scripting/logs/application.log

echo -e "\nNumber of error logs found in application.log"
grep -c "ERROR" /home/jordantanaliga100/Personal/shell-scripting/logs/application.log

echo -e "\nNumber of fatal logs found in application.log"
grep -c "FATAL" /home/jordantanaliga100/Personal/shell-scripting/logs/application.log

echo -e "\nNumber of fatal logs found in system.log"
grep -c "FATAL" /home/jordantanaliga100/Personal/shell-scripting/logs/system.log

echo -e "\nNumber of critical logs found in system.log"
grep -c "CRITICAL" /home/jordantanaliga100/Personal/shell-scripting/logs/system.log

echo -e "\nsearching for critical logs found in system.log"
grep "CRITICAL" /home/jordantanaliga100/Personal/shell-scripting/logs/system.log

