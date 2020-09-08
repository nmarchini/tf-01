
variable "name" {}
variable "cidr" {}

variable "tenancy" {
  default = "default"
}

variable "dns_support" {
  default = "true"
}

variable "dns_hostnames" {
  default = "true"
}
