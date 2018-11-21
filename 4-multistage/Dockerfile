# Builder image
FROM node:8-alpine as builder

WORKDIR /usr/src/app

COPY . /usr/src/app
RUN npm install && npm run build

# Final image
FROM nginx:alpine

COPY --from=builder /usr/src/app/dist/hwsw /usr/share/nginx/html