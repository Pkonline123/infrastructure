variable "network_zones" {
  default     = ["ru-central1-a", "ru-central1-b", "ru-central1-c"]
  type        = list(string)
  description = "Instance availability zone"
  # validation {
  #   condition     = contains(toset(["ru-central1-a", "ru-central1-b", "ru-central1-c"]), var.network_zones)
  #   error_message = "Select availability zone from the list: ru-central1-a, ru-central1-b, ru-central1-c."
  # }
  sensitive = false
  nullable  = false
}
variable "zone" {
  default     = "ru-central1-a"
  type        = string
  description = "availability zone"
  sensitive = false
  nullable  = false
}
