# Define the argument for openjdk version
ARG OPENJDK_TAG=8u232

FROM ruby:2.7.2-buster

# Setup to install Scala
RUN apt-get update && \
    apt-get install scala -y && \
    apt-get install -y curl && \
    sh -c '(echo "#!/usr/bin/env sh" && \
    curl -L https://github.com/lihaoyi/Ammonite/releases/download/2.1.1/2.12-2.1.1) > /usr/local/bin/amm && \
    chmod +x /usr/local/bin/amm'
RUN (rm -rf /root/.cache)
     
# Set the name of the maintainers
MAINTAINER Habib Ghaffari Hadigheh, Mark Armstrong <ghaffh1@mcmaster.ca, armstmp@mcmaster.ca>

# Set the working directory
WORKDIR /opt/a2
