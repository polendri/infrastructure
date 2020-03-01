module "ijj_li" {
  source                  = "./modules/ijj.li"
  floating_ip             = var.ijj_li_floating_ip
  digitalocean_ssh_key_id = var.digitalocean_ssh_key_id
  digitalocean_token      = var.digitalocean_token
}
