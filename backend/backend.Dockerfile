FROM node:12

WORKDIR /backend

COPY backend/package*.json ./

RUN npm install

COPY backend/ .

EXPOSE $PORT

CMD ["npm", "start"]

