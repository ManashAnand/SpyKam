FROM node:20-alpine

WORKDIR /container

COPY package.json package-lock.json /container/

RUN npm install

COPY . /container/

RUN npm run build

EXPOSE 3000

CMD [ "npm","start" ]