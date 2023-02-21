module "tf-yc-network" {
  source = "./modules/tf-yc-network"
  #network_zones = [var.network_zone]
}

module "tf-yc-instance" {
  source   = "./modules/tf-yc-instance"
  image_id = var.image_id
  zone     = var.zone
  #subnet_id = var.subnet_id
  subnet_id = element(toset([for each in module.tf-yc-network.network_zones : each.subnet_id if each.zone == var.zone]), 0)
  #network_zone = var.network_zone
  #subnet_id    = module.tf-yc-network.yandex_vpc_subnets[var.network_zone].subnet_id
}
