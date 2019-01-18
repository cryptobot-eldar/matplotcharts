#!/bin/bash


while true
do

SERVICE1='chart_creator2.py'

ps -ef | grep $SERVICE1 | grep -v grep
[ $?  -eq "0" ] && echo "$SERVICE1 process is running" || echo "$SERVICE1 process is not running, starting"; python /usr/local/bin/chart_creator2.py

sleep 100

done