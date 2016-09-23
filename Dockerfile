FROM python:2.7

RUN mkdir -p /code
WORKDIR /code/
ADD . /code/
RUN python setup.py install

