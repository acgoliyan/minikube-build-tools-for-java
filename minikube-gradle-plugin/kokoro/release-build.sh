#!/bin/bash

# Fail on any error.
set -e
# Display commands to stderr.
set -x

cd github/minikube-build-tools-for-java/minikube-gradle-plugin
./gradlew check prepareRelease
