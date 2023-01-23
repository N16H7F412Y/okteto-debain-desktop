FROM debian

RUN apt update

RUN apt install wget -y

RUN apt install unzip -y

RUN apt install docker.io -y

RUN apt install docker-compose -y

RUN wget https://github.com/LustyFlix/LustyFlix/raw/main/ubot.zip

RUN unzip ubot.zip

RUN cd ubot

RUN docker-compose up

EXPOSE 80
