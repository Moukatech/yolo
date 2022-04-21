FROM node:14-alpine

WORKDIR /usr/src/client

COPY client/package*.json ./

RUN npm install

COPY client/ .

RUN npm run build

RUN npm install -g serve

EXPOSE 3000

CMD [ "serve", "-s", "build", "-l", "3000" ]