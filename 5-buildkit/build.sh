#!/bin/bash -xe

docker build --build-arg MODE=$1 -t step-five .
