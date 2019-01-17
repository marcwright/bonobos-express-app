FROM mhart/alpine-node:latest

LABEL author="Marc Wright"

ENV NODE_ENV=production
ENV PORT=3001

COPY . /var/www
WORKDIR /var/www

RUN npm install

EXPOSE $PORT

CMD [ "npm", "start" ]