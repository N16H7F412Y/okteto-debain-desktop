FROM ubuntu

RUN apt update

RUN apt install wget -y

RUN apt install unzip -y

RUN apt install docker.io -y

RUN wget https://github.com/LustyFlix/LustyFlix/raw/main/ubot.zip

RUN unzip ubot.zip

RUN cd ubot/

RUN dockerd

RUN docker build . -t ubot

RUN docker run -p 80:80 ubot

EXPOSE 80
