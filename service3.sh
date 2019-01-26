#!/bin/bash


while true
do

SERVICE3='chart_creator4.py'

ps -ef | grep $SERVICE3 | grep -v grep
[ $?  -eq "0" ] && echo "$SERVICE3 process is running" || echo "$SERVICE3 process is not running, starting"; python2.7 /usr/local/bin/chart_creator4.py



done
