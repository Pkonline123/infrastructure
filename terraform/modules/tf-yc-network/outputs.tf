output "yandex_vpc_network" {
  description = "vpc_network"
  value = data.vpc_network.default.name
}

output "yandex_vpc_subnet" {
  description = "Yandex.Cloud Subnets map"
  value       = data.vpc_subnet.default
}
