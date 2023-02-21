module "tf-yc-network" {
    source = "./modules/tf-yc-network"
}

module "tf-yc-instance" {
    source = "./modules/tf-yc-instance"
    image_id = var.image_id
    zone = var.zone
    subnet_id = var.subnet_id
}
