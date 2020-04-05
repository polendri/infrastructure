# `podman` Role

Runs and manages a Podman pod.

## Tags

- `provision`
- `deploy`
- `update`
- `withdraw`

## Variables

| Variable                  | Description                                                          | Default                                       |
| ------------------------- | -------------------------------------------------------------------- | --------------------------------------------- |
| `pod_name`                | Name of the pod                                                      |                                               |
| `pod_create_args`         | `podman pod create` args                                             |                                               |
| `pod_containers`          | Array of container definitions                                       |                                               |
| `pod_containers.name`     | Name of the container                                                |                                               |
| `pod_containers.image`    | Container image name                                                 |                                               |
| `pod_containers.run_args` | `podman run` args                                                    |                                               |
| `pod_containers.cmd_args` | `podman run` command args                                            |                                               |
| `service_ports`           | Array of exposed port numbers (to be opened in firewall)             | `[]`                                          |
| `host_mounts`             | Array of paths of host-mounted volumes (to have permissions updated) | `[]`                                          |
| `uid`                     | UID of user executing in container                                   | `1`                                           |
| `gid`                     | GID of user executing in container                                   | `1`                                           |
| `systemd_unit_dir`        | systemd unit files directory                                         | `/home/{{ansible_user}}/.config/systemd/user` |
