#!/bin/sh

DOCKER_MACHINE_VERSION=0.8.0-rc2
KVM_DRIVER_VERSION=0.7.0
MINIKUBE_VERSION=0.5.0

# Install docker-machine
curl -L https://github.com/docker/machine/releases/download/v$DOCKER_MACHINE_VERSION/docker-machine-`uname -s`-`uname -m` > /usr/local/bin/docker-machine && \
>   chmod +x /usr/local/bin/docker-machine

# Install docker-machine-driver-kvm
curl -L https://github.com/dhiltgen/docker-machine-kvm/releases/download/v$KVM_DRIVER_VERSION/docker-machine-driver-kvm > /usr/local/bin/docker-machine-driver-kvm && \
>   chmod +x /usr/local/bin/docker-machine-driver-kvm

# Install minikube
curl -Lo minikube https://storage.googleapis.com/minikube/releases/v0.5.0/minikube-linux-amd64 && chmod +x minikube && sudo mv minikube /usr/local/bin/