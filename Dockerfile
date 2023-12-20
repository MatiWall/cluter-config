FROM ubuntu:20.04
ENV ANSIBLE_VERSION 2.16
RUN apt-get update; \
    apt-get install -y gcc python3; \
    apt-get install -y python3-pip; \
    apt-get clean all
RUN pip3 install --upgrade pip; \
    pip3 install "ansible==${ANSIBLE_VERSION}"; \
    pip3 install ansible
   
RUN apt-get update
RUN apt-get install -y openssh-client

RUN apt-get update
RUN apt-get install sshpass


