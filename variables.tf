# -------------------
# SENSITIVE VARIABLES

variable "digitalocean_token" {
  type        = string
  description = "DigitalOcean API token. To create one, visit https://cloud.digitalocean.com/account/api/tokens"
}

# -------------------

variable "digitalocean_ssh_key_id" {
  type        = number
  description = "API ID of the paul@pshendry.com SSH key added to DigitalOcean"
}
variable "ijj_li_floating_ip" {
  type        = string
  description = "DO floating IP to be assigned to the ijj.li host"
}
