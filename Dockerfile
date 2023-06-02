FROM node:alpine

WORKDIR /app

COPY package*.json ./
COPY index.html ./
COPY server.js ./

RUN npm install

EXPOSE 8000

CMD ["node", "server.js"]