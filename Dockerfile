## build 
FROM golang:alpine as builder
WORKDIR /src
RUN apk update && apk add curl
RUN curl -sLO https://github.com/caddyserver/xcaddy/releases/download/v0.3.5/xcaddy_0.3.5_linux_amd64.tar.gz
RUN tar zxf ./xcaddy_0.3.5_linux_amd64.tar.gz
RUN ./xcaddy build --with github.com/mholt/caddy-webdav

FROM alpine:3.19
WORKDIR /app
COPY --from=builder /src/caddy /usr/local/bin/caddy
COPY Caddyfile ./
RUN mkdir public
CMD caddy run

