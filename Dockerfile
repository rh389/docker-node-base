FROM node:6-slim
MAINTAINER rh389

# Build deps
RUN apt-get update && apt-get install -y git build-essential chrpath libssl-dev libxft-dev libfreetype6 libfreetype6-dev libfontconfig1 libfontconfig1-dev python

# PhantomJS
RUN wget https://github.com/paladox/phantomjs/releases/download/2.1.7/phantomjs-2.1.1-linux-x86_64.tar.bz2 && tar xvjf phantomjs-2.1.1-linux-x86_64.tar.bz2 && mv phantomjs-2.1.1-linux-x86_64 /usr/local/share && ln -sf /usr/local/share/phantomjs-2.1.1-linux-x86_64/bin/phantomjs /usr/local/bin

# Angular CLI @ 78b012664b55f0c87b4883b644deb777e88ee143
RUN cd /usr && git clone https://github.com/angular/angular-cli && cd angular-cli && git reset --hard 78b012664b55f0c87b4883b644deb777e88ee143 && npm install && npm link
