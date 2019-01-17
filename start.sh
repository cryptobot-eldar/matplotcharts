#!/bin/bash
#exec &>>/var/log/work.log

if [ -e /usr/local/bin/index.php ]
then
    mv index.php /var/www/html/index.php
    chmod 755 /var/www/html/index.php
else
    echo "file already moved"
fi

/usr/sbin/httpd



while true
do
SERVICE0='chart_creator.py'

ps -ef | grep $SERVICE0 | grep -v grep
[ $?  -eq "0" ] && echo "$SERVICE0 process is running" || echo "$SERVICE0 process is not running, starting"; python /usr/local/bin/chart_creator.py




SERVICE1='chart_creator2.py'

ps -ef | grep $SERVICE1 | grep -v grep
[ $?  -eq "0" ] && echo "$SERVICE1 process is running" || echo "$SERVICE1 process is not running, starting"; python /usr/local/bin/chart_creator2.py




SERVICE2='chart_creator3.py'

ps -ef | grep $SERVICE2 | grep -v grep
[ $?  -eq "0" ] && echo "$SERVICE2 process is running" || echo "$SERVICE2 process is not running, starting"; python /usr/local/bin/chart_creator3.py




SERVICE3='chart_creator4.py'

ps -ef | grep $SERVICE3 | grep -v grep
[ $?  -eq "0" ] && echo "$SERVICE3 process is running" || echo "$SERVICE3 process is not running, starting"; python /usr/local/bin/chart_creator4.py



SERVICE4='chart_creator5.py'

ps -ef | grep $SERVICE4 | grep -v grep
[ $?  -eq "0" ] && echo "$SERVICE4 process is running" || echo "$SERVICE4 process is not running, starting"; python /usr/local/bin/chart_creator5.py



sleep 10
done
