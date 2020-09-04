###################################################################################################

variable "name" {}
variable "cidr" {}

###################################################################################################

variable "tenancy" {
  default = "default"
}

variable "dns_support" {
  default = "true"
}

variable "dns_hostnames" {
  default = "true"
}

###################################################################################################

resource "aws_vpc" "scope" {
  cidr_block           = "${var.cidr         }"
  instance_tenancy     = "${var.tenancy      }"
  enable_dns_support   = "${var.dns_support  }"
  enable_dns_hostnames = "${var.dns_hostnames}"

  tags {
    Name = "${var.name}"
  }
}

###################################################################################################

output "id" {
  value = "${aws_vpc.scope.id                    }"
}

output "tenancy" {
  value = "${aws_vpc.scope.instance_tenancy      }"
}

output "dns_support" {
  value = "${aws_vpc.scope.enable_dns_support    }"
}

output "dns_hostnames" {
  value = "${aws_vpc.scope.enable_dns_hostnames  }"
}

output "vpc_cidr" {
  value = "${aws_vpc.scope.cidr_block}"
}

###################################################################################################
