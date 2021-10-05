FROM python:3.7-alpine
MAINTAINER Francisco 

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt 
RUN pip install -r /requirements.txt 

RUN mkdir /application
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user
 
