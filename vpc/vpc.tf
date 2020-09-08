module "vpc" {
  source = "../modules/vpc"
  name   = var.environment
  cidr   = "${var.vpc_cidr_base}${var.vpc_cidr_netmask}"
  tags   = merge(module.tags.tags, { Name : "vpc-${var.environment}" })

}
