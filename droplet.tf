data "digitalocean_image" "consul" {
  name = "consul"
}

# create consul server
module "consul-1" {
  source             = "./modules/digitalocean/droplet"
  image              = "${data.digitalocean_image.consul.image}"
  name               = "consul-1"
  region             = "lon1"
  size               = "512mb"
  backups            = "false"
  monitoring         = "true"
  ssh_keys           = ["${module.my_ssh_key.ssh_fingerprint}"]
  private_networking = "true"
}

module "consul-2" {
  source             = "./modules/digitalocean/droplet"
  image              = "${data.digitalocean_image.consul.image}"
  name               = "consul-2"
  region             = "lon1"
  size               = "512mb"
  backups            = "false"
  monitoring         = "true"
  ssh_keys           = ["${module.my_ssh_key.ssh_fingerprint}"]
  private_networking = "true"
}

module "consul-3" {
  source             = "./modules/digitalocean/droplet"
  image              = "${data.digitalocean_image.consul.image}"
  name               = "consul-3"
  region             = "lon1"
  size               = "512mb"
  backups            = "false"
  monitoring         = "true"
  ssh_keys           = ["${module.my_ssh_key.ssh_fingerprint}"]
  private_networking = "true"
}