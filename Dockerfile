FROM egaraev/basecentos:latest
COPY chart_creator.py chart_creator2.py chart_creator3.py chart_creator4.py config.py requirements.txt start.sh /usr/local/bin/
WORKDIR /usr/local/bin
RUN pip install -r requirements.txt
RUN chmod +x start.sh
ENTRYPOINT ["/usr/local/bin/start.sh"]
