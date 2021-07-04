# `home.ijj.li` `web` service

Deploys a reverse proxy and all the web services that go through it:

- Nextcloud

## Tags

- `deploy`: Deploys the service
- `update`: Applies updates to the service
- `start`: Starts the service
- `stop`: Stops the service
- `withdraw`: Un-deploys the service

## Notes

- Running Nextcloud CLI commands:
  - `podman exec -u www-data -it nextcloud php occ db:add-missing-indices`
- Accessing the `nextcloud-mariadb` database:
  - `podman exec -it nextcloud-mariadb mysql -uroot -p`
