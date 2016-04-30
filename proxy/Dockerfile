
FROM node:4-slim

EXPOSE 8081

WORKDIR /code

RUN mkdir -p /code && npm install http-proxy

COPY . /code

CMD node /code/index.js

