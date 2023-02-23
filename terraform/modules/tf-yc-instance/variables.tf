variable "platform_id" {
  default     = "standard-v1"
  type        = string
  description = "platform_id"
  sensitive = true
  nullable  = false
}
variable "zone" {
  default     = "ru-central1-a"
  type        = string
  description = "availability zone"
  sensitive = true
  nullable  = false
}
variable "cores" {
  default     = 2
  type        = number
  description = "cores"
  sensitive = true
  nullable  = false
}
variable "memory" {
  default     = 2
  type        = number
  description = "memory"
  sensitive = true
  nullable  = false
}
variable "image_id" {
  default     = "fd80qm01ah03dkqb14lc"
  type        = string
  description = "image_id"
  sensitive = true
  nullable  = false
}
variable "size" {
  default     = 50
  type        = number
  description = "size"
  sensitive = true
  nullable  = false
}
variable "subnet_id" {
  default     = "e9bi95vd74f8lp1mgdvm"
  type        = string
  description = "subnet_id"
  sensitive = true
  nullable  = false
}