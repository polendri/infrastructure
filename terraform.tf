# Terraform configuration for provisioning cloud infrastructure

module "ijj_li" {
  source                = "./hosts/ijj.li"
  floating_ip           = var.ijj_li_floating_ip
  digitalocean_ssh_keys = var.digitalocean_ssh_keys
  digitalocean_token    = var.digitalocean_token
}
