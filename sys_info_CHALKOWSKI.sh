#!/bin/bash

exec > sys_info_CHALKOWSKI.output

#Populate variable dat to include the system date, piped to awk to get the 2nd, 3rd and 4th columns
dat=$(date | awk '{print ($2,$3)}')
tim=$(date | awk '{print ($4)}')

#Populate variable who to include just the list of users in the first column from the who command
who=$(who | awk '{print ($1)}')

#Populate variable uptime to include the output from the uptime command
uptime=$(uptime)

#These just echo the results of each variable, prints out to screen
echo "The date is $dat and the time is $tim"

#This inserts an empty line to improve readability
echo ""

#This echos the list of users from the who variable
echo -e "The users currently on this system are:\n$who"

#This inserts an empty line to improve readability
echo ""

#This echos the uptime from the populated uptime variable
echo "The system uptime is: $uptime"



