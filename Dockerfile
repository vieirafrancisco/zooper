FROM node:21.7.1-alpine

WORKDIR /app

COPY package.json /app
COPY yarn.lock /app

RUN yarn install

COPY . /app

RUN yarn build

EXPOSE 3000

CMD ["node", ".output/server/index.mjs"]
