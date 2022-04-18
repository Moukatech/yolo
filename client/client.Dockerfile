FROM node:12

WORKDIR /client

COPY client/package*.json ./

RUN ls -la

RUN npm install

COPY client/ .

ENV PORT = 5001

EXPOSE 5001

CMD ["npm", "start"]

