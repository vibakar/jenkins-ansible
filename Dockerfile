FROM jenkins/jenkins:latest
USER root
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367
RUN apt-get update
RUN apt-get install -y ansible
ENV ANSIBLE_HOST_KEY_CHECKING=False