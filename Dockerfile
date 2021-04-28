FROM ubuntu
MAINTAINER pathob@users.noreply.github.com

RUN apt update 
RUN apt install -y curl

RUN mkdir -p /plugins
RUN cd /plugins
RUN curl https://repo1.maven.org/maven2/de/aservo/confapi-crowd-plugin/0.0.8/confapi-crowd-plugin-0.0.8.obr -o confapi-crowd-plugin.obr -s
