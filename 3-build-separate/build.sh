#!/bin/bash -xe

docker build -t step-three-builder -f Dockerfile.build .

docker create --name builder step-three-builder
docker cp builder:/usr/src/app/dist ./dist
docker rm builder

docker build -t step-three .