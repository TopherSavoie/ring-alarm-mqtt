FROM node:8

WORKDIR /root

COPY . /root/

RUN chmod +x ring-alarm-mqtt.js

RUN npm install

CMD ["npm", "start"]
