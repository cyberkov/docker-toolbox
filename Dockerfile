FROM debian:stable-slim

MAINTAINER toughiq <toughIQ@gmail.com>

RUN apt-get update && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends bash openssl openssh-client ca-certificates \
    curl wget git-core jq certbot dnsutils \
    && apt-get clean all && rm -rf /var/lib/apt/lists/*

WORKDIR /bin
CMD ["sleep","infinity"]

