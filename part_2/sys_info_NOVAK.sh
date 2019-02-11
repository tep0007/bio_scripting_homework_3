#!/bin/bash
#shebang line sets language to be used within script

time_date=`date`
#set variable which calls the date and time

us=`users`
#set variable which calls logged in users

upt=`uptime | awk -F'( |,|:)+' '{print $6,$7",",$8,"hours,",$9,"minutes."}'`
#set variable which calls the uptime and displays the day, hour, and minute

printf "Date and Time: $time_date\nUsers: $us\nUptime: $upt\n\n">> System_Output.txt 
#Prints the answers of each of the variables into a file
