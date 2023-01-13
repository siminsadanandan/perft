FROM alpine:3.10.0

LABEL \
  maintainer="Simin Sadanandan <simin.sadanandan@gmail.com>" \
  org.opencontainers.image.title="perft" \
  org.opencontainers.image.description="An alpine based Docker image with utilites telnet, curl, jq"

RUN  apk update \
        && apk upgrade \
        && apk add ca-certificates \
        && update-ca-certificates \
        && apk add --update openjdk11-jre tzdata curl jq unzip bash busybox-extras \
        && rm -rf /var/cache/apk/*

