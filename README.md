## Quick reference
- **Image based on**:   
  [alpine](https://hub.docker.com/_/alpine)

- **Supported architectures**:    
  `linux/amd64`, `linux/arm64`

- **Maintained by**:  
  [grmvoid](https://github.com/grmvoid)

- **Where to file issues**:    
  [https://github.com/grmvoid/docker-alpine/issues](https://github.com/grmvoid/docker-alpine/issues?q=)

## Supported tags and respective `Dockerfile` links
- `3.19.0`, `3.19`
- `3.18.5`, `3.18.0`
- `edge`

## How to usage this image

```Dockerfile
FROM grmvoid/alpine:3.19.0
RUN apk add --no-cache mysql-client
ENTRYPOINT [ "mysql" ]
```

## Environment Variables

The php image uses several environment variables which are easy to miss.

| Variable      | Default Value | Description |
|---------------|---------------|-------------|
| `PHPIZE_DEPS` |               |             |

## LICENSE

View [license](https://pkgs.alpinelinux.org/packages) information for the software contained in this image.