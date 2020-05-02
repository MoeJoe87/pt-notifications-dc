FROM ubuntu:16.04

RUN apt-get update && apt-get install -y unzip wget && apt-get clean

ARG PTNOTIFICATION_VERSION=1.3.2
ENV PTNOTIFICATION_VERSION ${PTNOTIFICATION_VERSION}

RUN mkdir -p /app
WORKDIR /app

RUN wget https://github.com/Roy4lz/ptnotifications/releases/download/$PTNOTIFICATION_VERSION/ptnotifications.zip  
RUN unzip ptnotifications.zip

WORKDIR /app/ptnotifications
RUN chmod +x ptnotifications

VOLUME /app/ptnotifications

CMD ./Start-linux.sh
