FROM alpine:3.19.0

LABEL org.opencontainers.image.base.name="docker.io/library/alpine:3.19.0" \
      org.opencontainers.image.description="Application packaged by grmvoid" \
      org.opencontainers.image.documentation="https://github.com/grmvoid/docker-alpine/tree/master/README.md" \
      org.opencontainers.image.licenses="MIT" \
      org.opencontainers.image.ref.name="3.19.0" \
      org.opencontainers.image.source="https://github.com/grmvoid/docker-alpine/tree/master/3.19" \
      org.opencontainers.image.title="alpine" \
      org.opencontainers.image.vendor="grmvoid" \
      org.opencontainers.image.version="3.19.0"

RUN set -eux; \
    apk add --update --no-cache \
        bash \
        ca-certificates \
        curl \
        gzip \
        p7zip \
        tar \
        unzip \
        git  \
        wget; \
    \
    rm -rf /var/cache/apk/*
