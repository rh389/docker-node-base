FROM node:6-slim
MAINTAINER rh389

# Angular CLI @ 1.0.0-beta.14
RUN npm install -g angular-cli@1.0.0-beta.14

# Mocha
RUN npm install -g mocha
