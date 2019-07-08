FROM node:8

WORKDIR /srv

COPY package*.json /srv/

RUN npm install

COPY . /srv/

CMD ["npm", "start"]
