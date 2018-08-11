FROM gitlab.soft-way.biz:5010/devops/ubuntu16.04
MAINTAINER dessanndes <dessanndes@gmail.com>

RUN apt-get clean && apt-get update && apt-get install -y \
    vim \
    python3-dev \
    locales \
    python3-pip \

RUN locale-gen ru_RU.UTF-8
ENV LANG ru_RU.UTF-8
ENV LANGUAGE ru_RU:ru
ENV LC_ALL ru_RU.UTF-8

ENV PYTHONUNBUFFERED 1

RUN mkdir /sonm-test
WORKDIR /sonm-test

RUN pip3 install -r /opt/app/requirements.txt

ADD task.py /sonm-test

CMD python3 task.py