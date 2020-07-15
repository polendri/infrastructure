# `podman` Role

Runs and manages a Podman pod.

## Tags

- `provision`
- `deploy`
- `update`
- `withdraw`

## Variables

| Variable                      | Description                                                          | Default            |
| ----------------------------- | -------------------------------------------------------------------- | ------------------ |
| `pod_name`                    | Name of the pod                                                      |                    |
| `pod_create_args`             | `podman pod create` args                                             |                    |
| `pod_containers`              | Array of container definitions                                       |                    |
| `pod_containers.name`         | Name of the container                                                |                    |
| `pod_containers.image`        | Container image name                                                 |                    |
| `pod_containers.run_args`     | `podman run` args                                                    |                    |
| `pod_containers.cmd_args`     | `podman run` command args                                            |                    |
| `pod_containers.default_user` | Use default container user instead of `pod_uid`/`pod_gid`            | `false`            |
| `expose_ports`                | Array of exposed port numbers to be opened in firewall, ex: 80/tcp   | `[]`               |
| `host_mounts`                 | Array of paths of host-mounted volumes (to have permissions updated) | `[]`               |
| `pod_uid`                     | UID of user executing in container                                   | `1`                |
| `pod_gid`                     | GID of user executing in container                                   | `1`                |
| `user`                        | System user running the pod                                          | `{{ansible_user}}` |
| `group`                       | Group of system user running the pod                                 | `users`            |
