module "tf-yc-network" {
  source        = "./modules/tf-yc-network"
  #network_zones = [var.network_zone]
}

module "tf-yc-instance" {
  source   = "./modules/tf-yc-instance"
  image_id = var.image_id
  zone     = var.zone
  subnet_id = var.subnet_id 
  #network_zone = var.network_zone
  #subnet_id    = module.tf-yc-network.yandex_vpc_subnets[var.network_zone].subnet_id
}
