#!/bin/bash


while true
do

SERVICE2='chart_creator3.py'

ps -ef | grep $SERVICE2 | grep -v grep
[ $?  -eq "0" ] && echo "$SERVICE2 process is running" || echo "$SERVICE2 process is not running, starting"; python2.7 /usr/local/bin/chart_creator3.py

sleep 250

done
