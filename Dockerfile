FROM node:12

WORKDIR /client

COPY package*.json /client

RUN ls -la

RUN npm install

COPY . .

ENV PORT = 5001

EXPOSE 5001

CMD ["npm", "start"]

