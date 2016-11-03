FROM node:6-slim
MAINTAINER rh389
RUN apt-get update

RUN adduser yarnuser
RUN chown -R yarnuser /home/yarnuser
RUN chown -R yarnuser /usr/local

USER yarnuser

RUN npm install --global yarn
