FROM node:6-slim
MAINTAINER rh389

RUN apt-get -y update && apt-get install -y yarn
