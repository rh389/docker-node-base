FROM node:7.6-alpine
MAINTAINER rh389
RUN apk update

RUN curl -o- -L https://yarnpkg.com/install.sh | bash
