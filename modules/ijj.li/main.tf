provider "digitalocean" {
  token = var.digitalocean_token
}

resource "digitalocean_droplet" "ijj_li" {
  image    = "ubuntu-18-04-x64"
  name     = "ijj.li"
  region   = "tor1"
  size     = "s-1vcpu-1gb"
  ssh_keys = [var.digitalocean_ssh_key_id]
}

resource "digitalocean_floating_ip_assignment" "ijj_li" {
  ip_address = var.floating_ip
  droplet_id = digitalocean_droplet.ijj_li.id
}
