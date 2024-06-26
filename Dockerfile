FROM node:lts-alpine3.18

WORKDIR /app

COPY . .

COPY package*.json ./

RUN npm install

CMD ["npm","start"]
