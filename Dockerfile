FROM ubuntu
MAINTAINER pathob@users.noreply.github.com

RUN apt update 
RUN apt install -y curl

RUN mkdir -p /plugins \
    && cd /plugins \
    && curl https://repo1.maven.org/maven2/de/aservo/confapi-crowd-plugin/0.0.8/confapi-crowd-plugin-0.0.8.jar -o confapi-crowd-plugin.jar -s \
    && curl https://repo1.maven.org/maven2/de/aservo/timestamp-to-date-crowd-plugin/0.0.4/timestamp-to-date-crowd-plugin-0.0.4.jar -o ttd-crowd-plugin.jar -s

