output "yandex_vpc_network" {
  description = "vpc_network"
  value       = data.yandex_vpc_network.default.name
}

output "yandex_vpc_subnet" {
  description = "Yandex.Cloud Subnets map"
  #value       = data.yandex_vpc_subnet.default
  value = element([for each in data.yandex_vpc_subnet.default : each.subnet_id if each.zone == var.zone], 0)
}
