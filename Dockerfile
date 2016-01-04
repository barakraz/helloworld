FROM ubuntu
MAINTAINER Barak Raz <raz.barak@gmail.com>

RUN apt-get update
RUN apt-get install -y redis-server python python-pip
RUN pip install redis flask

ADD ./hello.py /hello.py
EXPOSE 8000
CMD ["python", "/hello.py"]

