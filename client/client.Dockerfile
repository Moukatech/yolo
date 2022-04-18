FROM node:12

WORKDIR /client

COPY client/package*.json ./

RUN npm install

COPY client/ .

EXPOSE $PORT

CMD ["npm", "start"]

