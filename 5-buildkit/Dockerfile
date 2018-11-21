ARG MODE

# Base image
FROM node:8-alpine as base
WORKDIR /usr/src/app
COPY . /usr/src/app
RUN npm install

# Tester image
FROM base as tester
RUN npm run test

# Linter image
FROM base as linter
RUN npm run lint

# Builder image
FROM ${MODE} as builder
RUN npm run build

# Final image
FROM nginx:alpine
COPY --from=builder \
  /usr/src/app/dist/hwsw \
  /usr/share/nginx/html