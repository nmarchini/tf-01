variable "region" {
  description = "The AWS region that will be used to create resources in."
  default     = "eu-west-1"
}

variable "availability_zone_A" {
  description = "The first availability zone"
  default     = "eu-west-1a"
}

variable "availability_zone_B" {
  description = "The second availability zone"
  default     = "eu-west-1b"
}
variable "vpc_cidr_base" {}
variable "vpc_cidr_netmask" {}

variable "environment" {
  default = "dev"
}


variable "bastion_instance_ami" {
  type = map

  default = {
    dev  = "ami-0b3d64292df75b0eb" #Amazon Linux 2 LTS Candidate AMI 2017.12.0 (HVM), SSD Volume Type
    prod = "ami-0b3d64292df75b0eb" #Amazon Linux 2 LTS Candidate AMI 2017.12.0 (HVM), SSD Volume Type

  }
}

variable "bastion_root_volume_type" {
  default = "gp2"
}

variable "bastion_root_volume_size" {
  default = 8
}

variable "bastion_data_volume_name" {
  default = "/dev/xvdb"
}

variable "bastion_data_volume_type" {
  default = "gp2"
}

variable "bastion_data_volume_size" {
  default = 15
}

variable "bastion_data_volume_encryption" {
  default = "true"
}
