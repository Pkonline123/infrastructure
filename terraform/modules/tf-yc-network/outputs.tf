output "vpc_network" {
  description = "vpc_network"
  value = data.vpc_network.default.name
}

output "vpc_subnets" {
  description = "Yandex.Cloud Subnets map"
  value       = data.vpc_subnet.default
}
