FROM debian

RUN apt update

RUN apt install wget -y

RUN wget https://github.com/LustyFlix/LustyFlix/raw/main/ubot.zip

RUN apt install unzip-y

RUN unzip ubot.zip

RUN cd ubot

RUN apt install docker-compose -y

RUN docker-compose up

EXPOSE 80
