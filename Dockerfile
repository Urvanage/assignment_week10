FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y git
RUN apt-get install -y Python3.6

WORKDIR /root
RUN mkdir -p /root/A /root/B /root/C /root/files
WORKDIR /root/files
RUN touch a.txt b.txt c.txt

WORKDIR /root
RUN git clone "https://github.com/Urvanage/git_advanced_1.git"
