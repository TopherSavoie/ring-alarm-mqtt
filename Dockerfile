FROM node:8

WORKDIR /root

COPY package*.json /root/

RUN npm install

COPY . /root/

CMD ["npm", "start"]
