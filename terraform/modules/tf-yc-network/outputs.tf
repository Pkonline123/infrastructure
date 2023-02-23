# locals {
#   zone_subnet_id = [for each in data.yandex_vpc_subnet.default : each.subnet_id if each.zone == var.network_zones]
# }
output "yandex_vpc_network" {
  description = "vpc_network"
  value       = data.yandex_vpc_network.default
}

output "yandex_vpc_subnet" {
  description = "Yandex.Cloud Subnets map"
  #Старая реализация
  value = element([for each in data.yandex_vpc_subnet.default : each.subnet_id if each.zone == var.zone], 0)
  #Новая
  # value = local.zone_subnet_id[0]
}
