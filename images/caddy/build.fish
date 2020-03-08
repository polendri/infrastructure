#!/usr/bin/env fish

set IMAGE_NAME "caddy"
set CADDY_BIN_URL "https://caddyserver.com/download/linux/amd64?plugins=http.cache,http.cors,http.git,http.realip&license=personal&telemetry=off"

set BUILD_DIR (dirname (status --current-filename))

# Use Alpine as base image
buildah rm --all
and set CONTAINER (buildah from docker.io/library/alpine)

# Install dependencies
and buildah run --net host $CONTAINER -- apk add --no-cache ca-certificates git mailcap shadow tzdata

# Download and install Caddy
and buildah copy $CONTAINER $CADDY_BIN_URL /tmp/caddy.tar.gz
and buildah run --net host $CONTAINER -- tar -C /tmp -xzf /tmp/caddy.tar.gz
and buildah run --net host $CONTAINER -- mv /tmp/caddy /usr/local/bin/caddy
and buildah run --net host $CONTAINER -- chmod 755 /usr/local/bin/caddy
and buildah run --net host $CONTAINER -- rm -rf /tmp/*
and buildah run --net host $CONTAINER -- caddy -version

# Set up files and mountpoints
and buildah copy $CONTAINER $BUILD_DIR/Caddyfile /etc/

# Configure and create image
and buildah config --author 'Paul Hendry' \
                   --cmd '-conf /etc/Caddyfile -http-port 8080 -https-port 8443 -log stdout -agree' \
                   --entrypoint '["/usr/local/bin/caddy"]' \
                   --env 'CADDYPATH=/etc/ssl/caddy' \
                   --port 8080 \
                   --port 8443 \
                   --volume /etc/Caddyfile \
                   --volume /etc/ssl/caddy \
                   --volume /srv \
                   --volume /var/log/caddy \
                   --workingdir /srv \
                   $CONTAINER
and buildah commit --rm $CONTAINER $IMAGE_NAME
