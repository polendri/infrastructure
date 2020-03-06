# -------------------
# SENSITIVE VARIABLES

variable "digitalocean_token" {
  type        = string
  description = "DigitalOcean API token. To create one, visit https://cloud.digitalocean.com/account/api/tokens"
}

# -------------------

variable "digitalocean_ssh_keys" {
  type        = list(number)
  description = "API IDs of the SSH keys to add to DO droplets. Can be found by looking at API requests on the DO security settings page."
}
variable "ijj_li_floating_ip" {
  type        = string
  description = "DO floating IP to be assigned to the ijj.li host"
}
