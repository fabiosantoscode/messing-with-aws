
FROM node:4-slim

EXPOSE 8081

WORKDIR /code

RUN mkdir -p /code

RUN npm install node-http-proxy

COPY . /code

RUN echo "hello docker"

RUN cat /code/index.js

CMD node /code/index.js

