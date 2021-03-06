FROM python:3.5

MAINTAINER MLR <allrank@allegro.pl>

RUN mkdir /allrank
COPY requirements.txt setup.py Makefile /allrank/

RUN make -C /allrank install-reqs

WORKDIR /allrank