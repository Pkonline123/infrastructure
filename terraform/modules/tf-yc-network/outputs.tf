output "yandex_vpc_network" {
  description = "vpc_network"
  value = data.yandex_vpc_network.default.name
}

output "yandex_vpc_subnet" {
  description = "Yandex.Cloud Subnets map"
  value       = data.yandex_vpc_subnet.default
}
