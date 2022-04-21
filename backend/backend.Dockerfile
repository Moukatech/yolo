FROM node:17.8.0

WORKDIR /usr/src/backend

COPY backend/package*.json ./

RUN npm install

COPY backend/ .

EXPOSE 4000

CMD [ "node", "server.js"]
