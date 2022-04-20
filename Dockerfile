FROM ubuntu:20.04
MAINTAINER Natasha Upchurch "TashaSkyUp@gmail.com"

RUN apt-get update -y && \
	apt-get install -y python3-pip python3

COPY ./requirements.txt /app/requirements.txt
WORKDIR /app

RUN pip3 install -r requirements.txt

COPY . /app

ENTRYPOINT ["python3"]
CMD ["app.py"]
