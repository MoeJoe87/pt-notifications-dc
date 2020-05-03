FROM ubuntu:16.04

RUN apt-get update && apt-get install -y unzip wget && apt-get clean
RUN apt-get install -y unzip curl openjdk-8-jdk
RUN curl -sL https://deb.nodesource.com/setup_10.x -o nodesource_setup.sh && bash nodesource_setup.sh
RUN apt-get install -y nodejs && apt-get clean
RUN npm install pm2@latest -g

ARG PTNOTIFICATION_VERSION=1.3.2
ENV PTNOTIFICATION_VERSION ${PTNOTIFICATION_VERSION}

RUN mkdir -p /app/
WORKDIR /app

RUN wget https://github.com/Roy4lz/ptnotifications/releases/download/$PTNOTIFICATION_VERSION/ptnotifications.zip  
RUN unzip ptnotifications.zip

WORKDIR /app/ptnotifications
RUN chmod +x PTNotifications.jar

VOLUME /app/ptnotifications

CMD pm2 start pm2-PTNotifications.json && pm2 log 0
