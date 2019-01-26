#!/bin/bash


while true
do

SERVICE4='chart_creator5.py'

ps -ef | grep $SERVICE4 | grep -v grep
[ $?  -eq "0" ] && echo "$SERVICE4 process is running" || echo "$SERVICE4 process is not running, starting"; python2.7 /usr/local/bin/chart_creator5.py



done