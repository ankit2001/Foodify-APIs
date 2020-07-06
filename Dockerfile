FROM python:3.7-alpine

ENV PYTHONUNBUFFERED 1
COPY ./requirements.txt /requirements.txt
RUN pip3 install -r /requirements.txt 
#RUN apt install python3 python3-pip
#RUN python3 -m venv ~/Foodify-APIS
#RUN source ~/Foodify-APIS/bin/activate
RUN mkdir /foodify
WORKDIR /foodify
COPY ./foodify /foodify

RUN adduser -D user
USER user
