FROM continuumio/anaconda
WORKDIR /setup/
COPY ./setup-cpu.sh .
COPY ./ctpn /setup/ctpn
#RUN chmod 777 ./setup-cpu.sh
RUN sh ./setup-cpu.sh
#WORKDIR /setup/ctpn/lib/utils/
#RUN sh ./make-for-cpu.sh
WORKDIR /ocr/

