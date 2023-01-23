FROM debian

RUN apt update

RUN apt install docker.io -y

RUN docker run -p 80:80 lustyflix/gshell
