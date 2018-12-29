#!/bin/bash
#exec &>>/var/log/work.log

while true
do
SERVICE0='chart_creator.py'

if ps ax | grep -v grep | grep $SERVICE0 > /dev/null
then
    echo "$SERVICE0 service running "
else
    echo there is no such "$SERVICE0 service, starting"
    python /usr/local/bin/chart_creator.py
fi



SERVICE1='chart_creator2.py'

if ps ax | grep -v grep | grep $SERVICE1 > /dev/null
then
    echo "$SERVICE1 service running "
else
    echo there is no such "$SERVICE1 service, starting"
    python /usr/local/bin/chart_creator2.py
fi



SERVICE2='chart_creator3.py'

if ps ax | grep -v grep | grep $SERVICE2 > /dev/null
then
    echo "$SERVICE2 service running "
else
    echo there is no such "$SERVICE2 service, starting"
    python /usr/local/bin/chart_creator3.py
fi


SERVICE3='chart_creator4.py'

if ps ax | grep -v grep | grep $SERVICE3 > /dev/null
then
    echo "$SERVICE3 service running "
else
    echo there is no such "$SERVICE3 service, starting"
    python /usr/local/bin/chart_creator4.py
fi

sleep 10
done
