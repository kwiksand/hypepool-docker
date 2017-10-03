FROM node:8.6-stretch

RUN cd /usr/src && \
    git clone https://github.com/bonesoul/hypepool.git app && \
    cd /usr/src/app && \
    npm install -g grunt-cli pm2 && \
    npm install

EXPOSE 8080

WORKDIR /usr/src/app
CMD [ "pm2-docker", "src/server.js" ]
