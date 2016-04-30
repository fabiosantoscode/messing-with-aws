FROM node:4-slim

EXPOSE 8080
WORKDIR /code

COPY . /code

RUN echo "hello docker"

RUN cat /code/index.js

CMD node /code/index.js

