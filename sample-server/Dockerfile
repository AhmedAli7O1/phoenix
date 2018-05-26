FROM node:8.11-alpine

RUN npm i -g json-server

WORKDIR /app

CMD [ "json-server", "--watch", "db.json" ]