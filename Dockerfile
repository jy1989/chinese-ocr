FROM continuumio/anaconda3:5.0.1
WORKDIR /setup/
COPY ./setup-cpu.sh .
COPY ./ctpn WORKDIR/ctpn
#RUN chmod 777 ./setup-cpu.sh
RUN sh ./setup-cpu.sh
WORKDIR /setup/ctpn/lib/utils/
RUN sh ./make-for-cpu.sh


