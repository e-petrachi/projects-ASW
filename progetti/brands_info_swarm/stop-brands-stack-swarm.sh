#!/bin/bash

echo 'Removing brands-info application as a stack'

export DOCKER_HOST=tcp://swarm.inf.uniroma3.it:2376
export DOCKER_CERT_PATH=../swarm.inf.uniroma3.it/resources/certs
export DOCKER_TLS_VERIFY=1

docker stack rm brands_info-9003
