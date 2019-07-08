FROM node:8

WORKDIR /root

COPY package*.json /root/

RUN chmod +x ring-alarm-mqtt.js

RUN npm install

COPY . /root/

CMD ["npm", "start"]
