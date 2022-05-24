FROM python:3.8-alpine

WORKDIR /app

RUN apk add build-base linux-headers gettext

RUN pip install -U \
    pip \
    setuptools \
    wheel

RUN pip3 install comfoairq-homie

COPY config.template config.template

COPY config.sh config.sh
RUN chmod u+x config.sh

CMD ./config.sh && comfoairq-homie
