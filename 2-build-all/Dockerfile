FROM node:8-alpine

RUN apk update && apk add nginx && mkdir /run/nginx

WORKDIR /usr/src/app

COPY . /usr/src/app
RUN npm install && npm run build

COPY default.conf /etc/nginx/conf.d/
CMD ["nginx", "-g", "daemon off;"]