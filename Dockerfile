ARG ALPINE_VERSION
ARG TARGET_PLATFORM

FROM alpine:${ALPINE_VERSION}

LABEL org.opencontainers.image.title="alpine"
LABEL org.opencontainers.image.description="a litte wrapper around base image of alpine."
LABEL org.opencontainers.image.url="hhttps://github.com/nulldark/alpine"
LABEL org.opencontainers.image.source="https://github.com/nulldark/alpine"
LABEL org.opencontainers.image.authors="Dominik Szamburski <dominikszamburski99@gmai.com>"
LABEL org.opencontainers.image.vendor="nulldark"
LABEL org.opencontainers.image.licenses="MIT"

RUN set -xe; \
    apk add --update --no-cache \
        bash \
        ca-certificates \
        curl \
        gzip \
        p7zip \
        tar \
        unzip \
        wget; \
    \
    dockerplatform=${TARGET_PLATFORM:-linux/amd64}; \
    rm -rf /var/cache/apk/*
