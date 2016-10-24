FROM node:6-slim
MAINTAINER rh389

RUN curl -o- -L https://yarnpkg.com/install.sh | bash
