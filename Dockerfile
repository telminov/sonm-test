FROM ubuntu:18.04
EXPOSE 80

RUN apt-get clean && apt-get update && apt-get install -y python3-dev

ENV PYTHONUNBUFFERED 1

RUN mkdir /sonm-test
WORKDIR /sonm-test

ADD task.py /sonm-test
CMD python3 task.py
