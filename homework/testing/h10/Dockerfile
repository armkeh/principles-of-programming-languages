# Define the argument for openjdk version
ARG OPENJDK_TAG=8u232

FROM clojure:openjdk-8

# Setup to install Scala
RUN apt-get update && \
    apt-get install scala -y && \
    apt-get install -y curl && \
    sh -c '(echo "#!/usr/bin/env sh" && \
    curl -L https://github.com/lihaoyi/Ammonite/releases/download/2.1.1/2.12-2.1.1) > /usr/local/bin/amm && \
    chmod +x /usr/local/bin/amm'
RUN (rm -rf /root/.cache)

# Install Ruby
RUN apt-get update && apt-get install -y --no-install-recommends --no-install-suggests curl bzip2 build-essential libssl-dev libreadline-dev zlib1g-dev && \
    rm -rf /var/lib/apt/lists/* && \
    curl -L https://github.com/rbenv/ruby-build/archive/v20201118.tar.gz | tar -zxvf - -C /tmp/ && \
    cd /tmp/ruby-build-* && ./install.sh && cd / && \
    ruby-build -v 2.7.2 /usr/local && rm -rfv /tmp/ruby-build-*

# Set the name of the maintainers
MAINTAINER Habib Ghaffari Hadigheh, Mark Armstrong <ghaffh1@mcmaster.ca, armstmp@mcmaster.ca>

# Set the working directory
WORKDIR /opt/h10
