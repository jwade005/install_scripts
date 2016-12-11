#!/bin/bash

timer=$(cat /proc/uptime | cut -d " " -f1)
users=$(/usr/bin/who | grep -c "")

if [ "$timer" > "7200" ]; then
    echo "Server `hostname` Server ALERT!"
    echo "Number of users logged on: $users"
    echo -e "Server Alert: `hostname`:\n `uptime -p` \n USERS: `who` "

else
    exit 0

fi

if [ "$users" -ge "1" ]; then
    echo "There are users logged on."

else
    echo "There are no users logged on."

fi

##Crontab entry to run script every 30 minutes:

##0,30 * * * * /home/ec2-user/server_alert3.sh | mail -s "Server Alert" wadejs@icloud.com

##Output to email wadejs@icloud.com:

##Server ip-172-31-17-171.us-west-2.compute.internal has been up for more than 2 hours!
##Number of users logged on: 0
##There are no users logged on.
##Server Alert: ip-172-31-17-171.us-west-2.compute.internal:
##up 4 hours, 38 minutes
##USERS:  
