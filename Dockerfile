FROM node:7.6-alpine
MAINTAINER rh389
RUN apt-get update

RUN npm install --global yarn
