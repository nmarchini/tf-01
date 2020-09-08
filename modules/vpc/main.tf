resource "aws_vpc" "scope" {
  cidr_block           = var.cidr
  instance_tenancy     = var.tenancy
  enable_dns_support   = var.dns_support
  enable_dns_hostnames = var.dns_hostnames
  tags                 = var.tags
}
