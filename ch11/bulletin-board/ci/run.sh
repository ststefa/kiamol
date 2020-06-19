#!/bin/sh

helm upgrade --install \
  --create-namespace \
  --atomic \
  --set registryServer=${REGISTRY_SERVER},imageBuildNumber=${BUILD_NUMBER} \
  --namespace kiamol-test \
  helm/bulletin-board