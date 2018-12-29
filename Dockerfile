FROM egaraev/basecentos:latest
COPY chart_creator.py chart_creator2.py chart_creator3.py chart_creator4.py config.py start.sh /usr/local/bin/
WORKDIR /usr/local/bin
RUN chmod +x start.sh
RUN touch /var/log/work.log
ENTRYPOINT ["/usr/local/bin/start.sh"]
