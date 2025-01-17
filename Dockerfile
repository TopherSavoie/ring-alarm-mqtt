FROM node:current-alpine

WORKDIR /root

COPY . /root/

RUN chmod +x ring-alarm-mqtt.js

RUN npm install

ENTRYPOINT npm run start
