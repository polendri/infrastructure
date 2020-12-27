FROM caddy:builder-alpine AS builder

RUN xcaddy build --with github.com/abiosoft/caddy-exec

FROM caddy:alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
RUN apk add --no-cache git
