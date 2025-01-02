FROM alpine:edge

LABEL org.opencontainers.image.base.name="docker.io/library/alpine:edge" \
      org.opencontainers.image.description="Application packaged by grmvoid" \
      org.opencontainers.image.documentation="https://github.com/grmvoid/docker-alpine/tree/master/README.md" \
      org.opencontainers.image.licenses="MIT" \
      org.opencontainers.image.ref.name="edge" \
      org.opencontainers.image.source="https://github.com/grmvoid/docker-alpine/tree/master/edge" \
      org.opencontainers.image.title="alpine" \
      org.opencontainers.image.vendor="grmvoid" \
      org.opencontainers.image.version="edge"

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
