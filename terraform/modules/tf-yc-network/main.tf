data "yandex_vpc_network" "default" {
  name = "ru-central1-a"
}

data "yandex_vpc_subnet" "default" {
  #for_each = toset(var.network_zones)
  for_each = var.network_zones

  name = "${data.yandex_vpc_network.default.name}-${each.key}"
}
