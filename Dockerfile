FROM node:7.6-alpine
MAINTAINER rh389
RUN apt-get update

RUN curl -o- -L https://yarnpkg.com/install.sh | bash
