FROM arm32v7/python:2.7.15-jessie

#copy qemu from Docker/hooks (when on DockerHub)
COPY qemu-arm-static /usr/bin/

FROM node:8

WORKDIR /srv

COPY package*.json ./

RUN npm install

COPY . .

CMD ["npm", "start"]
