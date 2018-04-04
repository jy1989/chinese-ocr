FROM debian:stretch

# install debian packages
#ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -qq \
 && apt-get clean

COPY ./setup-cpu.sh .
RUN chmod 777 ./setup-cpu.sh
RUN sh ./setup-cpu.sh

WORKDIR /srv/
