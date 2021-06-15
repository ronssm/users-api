FROM node:14-alpine

RUN apk add dumb-init

ENV NODE_ENV production

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY . .

RUN npm install --production

EXPOSE 3000

CMD ["dumb-init", "node", "./dist/app.js"]