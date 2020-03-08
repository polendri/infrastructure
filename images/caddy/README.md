# Caddy Webserver OCI Image

[Caddy](https://caddyserver.com/) is an open-source webserver with automatic HTTPS written in Go.

This packages a "Personal" licensed version of Caddy by using their binary download service.

## Build

`./images/caddy/build.fish`

## Run

### Ports

- `8080`: HTTP
- `8443`: HTTPS

### Volumes

It's recommended to mount all of these volumes, since that makes it possible to run the container
as an unprivileged user (via the `user` flag) and with a read-only filesystem (via the `read-only`
flag).

- `/etc/Caddyfile`: The server config file
- `/etc/ssl/certs`: Contains auto-generated SSL certs
- `/srv`: The webserver root
- `/var/log/caddy`: Contains logs
