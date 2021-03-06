FROM python:3.5-stretch

COPY requirements.txt /req/

RUN pip3 install -r /req/requirements.txt

RUN apt-get update && apt-get install -y apache2 \
   libapache2-mod-wsgi-py3 \
   netcat-openbsd \
   zlib1g-dev \
   dnsutils