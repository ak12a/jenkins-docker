#!/bin/bash

cd /opt/

Echo " Tagging docker images"

docker image build -t $JOB_NAME.v1:$BUILD_NUMBER .
docker image tag $JOB_NAME.v1:$BUILD_NUMBER kr19/$JOB_NAME.v1:$BUILD_NUMBER
docker image tag $JOB_NAME.v1:$BUILD_NUMBER kr19/$JOB_NAME:latest
docker image push  kr19/$JOB_NAME.v1:$BUILD_NUMBER
docker image push  kr19/kr19/$JOB_NAME:latest
docker image rmi kr19/$JOB_NAME.v1:$BUILD_NUMBER
docker image rmi kr19/kr19/$JOB_NAME:latest
