# This Dockerfile has two required ARGs to determine which base image
# to use for the JDK and which sbt version to install.

# Define the argument for openjdk version
ARG OPENJDK_TAG=8u232
# Do the packaging based on openjdk
FROM openjdk:${OPENJDK_TAG}

# Set the name of the maintainers
MAINTAINER Habib Ghaffari Hadigheh, Mark Armstrong <ghaffh1@mcmaster.ca, armstmp@mcmaster.ca>

RUN apt-get update && \
  apt-get install scala -y && \
  apt-get install -y curl && \
  sh -c '(echo "#!/usr/bin/env sh" && \
  curl -L https://github.com/lihaoyi/Ammonite/releases/download/2.1.1/2.12-2.1.1) > /usr/local/bin/amm && \
  chmod +x /usr/local/bin/amm'

# Set the working directory
WORKDIR /opt/h1

