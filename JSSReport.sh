#!/bin/bash

#Challange 1

#Written by Michael Christoforou February 14 2017
#Title Log Excerpt
echo "JSS Report" >> JSSReport.log
date "+%H:%M:%S %d/%m/%y" >> JSSReport.log

#Check CPU Usage & output to log
echo "CPU Usage" >> JSSReport.log
mpstat >> JSSReport.log
echo " " >> JSSReport.log

#Check Memory Usage & output to log
echo "Memory Usage" >> JSSReport.log
free -m >> JSSReport.log
echo " " >> JSSReport.log

#Check Diskspace & output to log
echo "Available Diskspace" >> JSSReport.log
df /dev/sda1 >> JSSReport.log
echo " " >> JSSReport.log

#Check Database Connections and output to log
echo "Database Connections" >> JSSReport.log
mysqladmin -v -ujamfsoftware -pjamfsw03 processlist | grep jamfsoftware | wc -l >> JSSReport.log
echo " " >> JSSReport.log
echo "======================End Report=======================" >> JSSReport.log
echo " " >> JSSReport.log
