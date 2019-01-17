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


./service0.sh &
./service1.sh &
./service2.sh &
./service3.sh &
./service4.sh
