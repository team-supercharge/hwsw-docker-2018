#!/bin/bash -xe

npm install
npm run build

docker build -t step-one .