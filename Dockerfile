FROM continuumio/anaconda3:5.0.1

COPY ./setup-cpu.sh .
COPY ./ctpn .
#RUN chmod 777 ./setup-cpu.sh
RUN sh ./setup-cpu.sh

WORKDIR /srv/
