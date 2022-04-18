FROM node:12

WORKDIR /backend

COPY backend/package*.json ./

RUN npm install

COPY backend/ .

ENV PORT = 5001

EXPOSE 5001

CMD ["npm", "start"]

