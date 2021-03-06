FROM node:6.3.1

RUN npm install nodemon -g

RUN mkdir -p /app

WORKDIR /app

ADD . /tinyurl

RUN cd /app && npm install

EXPOSE 3000

CMD ["nodemon", "/app/server.js"]