FROM alpine:3.20

ENV NODE_VERSION 22.12.0

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm","run","dev"]



