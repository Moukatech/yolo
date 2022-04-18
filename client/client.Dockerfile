FROM node:12

WORKDIR /client

COPY client/package*.json ./

RUN npm install

COPY client/ .

ENV PORT = 8000

EXPOSE 8000

CMD ["npm", "start"]

