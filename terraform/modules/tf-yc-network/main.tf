data "vpc_network" "default" {
  name = "default"
}

data "vpc_subnet" "default" {
  for_each = toset(var.network_zones)

  name = "${data.vpc_network.default.name}-${each.key}"
}