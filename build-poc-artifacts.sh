#!/bin/bash

export GOOS=linux; go build .
cp kubeprovenance ./artifacts/simple-image/poc-apiserver
docker build -t poc-apiserver:latest ./artifacts/simple-image
