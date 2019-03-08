#!/bin/bash

export GOOS=linux; go build .
cp kubepoc ./artifacts/simple-image/poc-apiserver
docker build -t poc-apiserver:latest ./artifacts/simple-image
