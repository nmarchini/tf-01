locals {

  subnet_private_a_cidr_range = "0/28"
  subnet_private_b_cidr_range = "16/28"
  subnet_private_c_cidr_range = "32/28"
  subnet_public_a_cidr_range  = "48/28"
  subnet_public_b_cidr_range  = "64/28"
  subnet_public_c_cidr_range  = "80/28"
  subnet_dmz_a_cidr_range     = "96/28"
  subnet_dmz_b_cidr_range     = "112/28"
  subnet_dmz_c_cidr_range     = "128/28"

  # vpc_cidr_base = {

  #   dev  = "172.16.16."
  #   prod = "172.16.32."

  # }

  # vpc_cidr_netmask = {

  #   dev  = "0/24"
  #   prod = "0/24"

  # }
}
