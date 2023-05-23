FROM ubuntu:latest


RUN apt-get update && apt-get -y install curl sendmail
RUN apt-get update && apt-get -y install coreutils

COPY script.sh /usr/local/bin/script.sh
RUN chmod +x /usr/local/bin/script.sh

RUN ./usr/local/bin/script.sh