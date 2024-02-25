FROM ubuntu

RUN apt-get update 
# RUN apt-get install -y python3 python3-pip
RUN mkdir /root/work
RUN git 

WORKDIR /root/work

COPY . /root/work

# ENTRYPOINT spark-sbumit src/main.py