data "yandex_vpc_network" "default" {
  name = "default"
}

data "yandex_vpc_subnet" "default" {
  #Старая реализация
  for_each = toset(var.network_zones)
  name = "${data.yandex_vpc_network.default.name}-${each.key}"
  #Новая
  # for_each = toset(data.yandex_vpc_network.default.subnets_ids)
  # subnet_id = "${each.value}"
}
