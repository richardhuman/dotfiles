#!/bin/bash



UTILITIES="minikube redis skaffold watch"

echo "> Installing base utilities: ${UTILITIES}"

brew install ${UTILITIES}