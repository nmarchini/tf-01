###################################################################################################

###################################################################################################

module "vpc" {
  source = "../modules/vpc"
  name   = "${terraform.workspace}"
  cidr   = "${lookup(var.vpc_cidr_base, terraform.workspace)}.${var.vpc_cidr_nm}"
}

###################################################################################################

###################################################################################################

output "vpc_id" {
  value = "${module.vpc.id                          }"
}

output "vpc_tenancy" {
  value = "${module.vpc.tenancy                     }"
}

output "vpc_dns_support" {
  value = "${module.vpc.dns_support                 }"
}

output "vpc_dns_hostnames" {
  value = "${module.vpc.dns_hostnames               }"
}

###################################################################################################

