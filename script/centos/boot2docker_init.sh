#!/bin/bash


boot2docker init
boot2docker up


boot2docker ssh  "echo 'export EXTRA_ARGS=\"--registry-mirror=http://d01e6173.m.daocloud.io\"'|sudo tee -a /var/lib/boot2docker/profile"


boot2docker restart

export DOCKER_HOST=tcp://192.168.59.103:2375
unset DOCKER_CERT_PATH
unset DOCKER_TLS_VERIFY