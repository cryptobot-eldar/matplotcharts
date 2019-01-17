FROM egaraev/basecentos:latest
COPY chart_creator.py chart_creator2.py chart_creator3.py chart_creator4.py chart_creator5.py config.py requirements.txt index.php start.sh service0.sh service1.sh service2.sh service3.sh service4.sh /usr/local/bin/
RUN mkdir /usr/local/bin/data
WORKDIR /usr/local/bin
RUN yum install gcc-c++ libfreetype6-dev freetype-devel libpng-dev httpd-2.4.6 php php-mysqli php-common -y
COPY httpd.conf /etc/httpd/conf
RUN rm -rf /var/www/html/index.html
RUN pip install -r requirements.txt
RUN chmod +x start.sh service0.sh service1.sh service2.sh service3.sh service4.sh
CMD mkdir /run/httpd ; /usr/sbin/httpd -D FOREGROUND
ENTRYPOINT ["/usr/local/bin/start.sh"]
