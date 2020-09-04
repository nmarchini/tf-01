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

variable "vpc_cidr_base" {
  type = "map"

  default = {
    slalom0318-labuser1  = "172.16.16"
    slalom0318-labuser2  = "172.16.32"
    slalom0318-labuser3  = "172.16.48"
    slalom0318-labuser4  = "172.16.64"
    slalom0318-labuser5  = "172.16.80"
    slalom0318-labuser6  = "172.16.96"
    slalom0318-labuser7  = "172.16.112"
    slalom0318-labuser8  = "172.16.128"
    slalom0318-labuser9  = "172.16.144"
    slalom0318-labuser10 = "172.16.160"
    slalom0318-labuser11 = "172.16.176"
    slalom0318-labuser12 = "172.16.192"
    slalom0318-labuser13 = "172.16.208"
    slalom0318-labuser14 = "172.16.224"
    slalom0318-labuser15 = "172.16.240"
    slalom0318-labuser16 = "172.16.16"
    slalom0318-labuser17 = "172.17.32"
    slalom0318-labuser18 = "172.17.48"
    slalom0318-labuser19 = "172.17.64"
    slalom0318-labuser20 = "172.17.80"
    slalom0318-labuser21 = "172.17.96"
    slalom0318-labuser22 = "172.17.112"
    slalom0318-labuser23 = "172.17.128"
    slalom0318-labuser24 = "172.17.144"
    slalom0318-labuser25 = "172.17.160"
    slalom0318-labuser26 = "172.17.176"
    slalom0318-labuser27 = "172.17.192"
    slalom0318-labuser28 = "172.17.208"
    slalom0318-labuser29 = "172.17.224"
    slalom0318-labuser30 = "172.17.240"
    slalom0318-labuser97 = "172.18.16"
    slalom0318-labuser98 = "172.18.32"
    slalom0318-labuser99 = "172.18.48"
  }
}

variable "vpc_cidr_nm" {
  default = "0/24"
}

variable "subnet_private_a_cidr_range" {
  default = "0/28"
}

variable "subnet_private_b_cidr_range" {
  default = "16/28"
}

variable "subnet_private_c_cidr_range" {
  default = "32/28"
}

variable "subnet_public_a_cidr_range" {
  default = "48/28"
}

variable "subnet_public_b_cidr_range" {
  default = "64/28"
}

variable "subnet_public_c_cidr_range" {
  default = "80/28"
}

variable "subnet_dmz_a_cidr_range" {
  default = "96/28"
}

variable "subnet_dmz_b_cidr_range" {
  default = "112/28"
}

variable "subnet_dmz_c_cidr_range" {
  default = "128/28"
}

variable "bastion_instance_ami" {
  type = "map"

  default = {
    slalom-lon-aws-admin = "ami-6d263d09" #Amazon Linux 2 LTS Candidate AMI 2017.12.0 (HVM), SSD Volume Type
    slalom0318-labuser1  = "ami-6d263d09" #Amazon Linux 2 LTS Candidate AMI 2017.12.0 (HVM), SSD Volume Type
    slalom0318-labuser2  = "ami-6d263d09" #Amazon Linux 2 LTS Candidate AMI 2017.12.0 (HVM), SSD Volume Type
    slalom0318-labuser3  = "ami-6d263d09" #Amazon Linux 2 LTS Candidate AMI 2017.12.0 (HVM), SSD Volume Type
    slalom0318-labuser4  = "ami-6d263d09" #Amazon Linux 2 LTS Candidate AMI 2017.12.0 (HVM), SSD Volume Type
    slalom0318-labuser5  = "ami-6d263d09" #Amazon Linux 2 LTS Candidate AMI 2017.12.0 (HVM), SSD Volume Type
    slalom0318-labuser6  = "ami-6d263d09" #Amazon Linux 2 LTS Candidate AMI 2017.12.0 (HVM), SSD Volume Type
    slalom0318-labuser7  = "ami-6d263d09" #Amazon Linux 2 LTS Candidate AMI 2017.12.0 (HVM), SSD Volume Type
    slalom0318-labuser8  = "ami-6d263d09" #Amazon Linux 2 LTS Candidate AMI 2017.12.0 (HVM), SSD Volume Type
    slalom0318-labuser9  = "ami-6d263d09" #Amazon Linux 2 LTS Candidate AMI 2017.12.0 (HVM), SSD Volume Type
    slalom0318-labuser10 = "ami-6d263d09" #Amazon Linux 2 LTS Candidate AMI 2017.12.0 (HVM), SSD Volume Type
    slalom0318-labuser11 = "ami-6d263d09" #Amazon Linux 2 LTS Candidate AMI 2017.12.0 (HVM), SSD Volume Type
    slalom0318-labuser12 = "ami-6d263d09" #Amazon Linux 2 LTS Candidate AMI 2017.12.0 (HVM), SSD Volume Type
    slalom0318-labuser13 = "ami-6d263d09" #Amazon Linux 2 LTS Candidate AMI 2017.12.0 (HVM), SSD Volume Type
    slalom0318-labuser14 = "ami-6d263d09" #Amazon Linux 2 LTS Candidate AMI 2017.12.0 (HVM), SSD Volume Type
    slalom0318-labuser15 = "ami-6d263d09" #Amazon Linux 2 LTS Candidate AMI 2017.12.0 (HVM), SSD Volume Type
    slalom0318-labuser16 = "ami-6d263d09" #Amazon Linux 2 LTS Candidate AMI 2017.12.0 (HVM), SSD Volume Type
    slalom0318-labuser17 = "ami-6d263d09" #Amazon Linux 2 LTS Candidate AMI 2017.12.0 (HVM), SSD Volume Type
    slalom0318-labuser18 = "ami-6d263d09" #Amazon Linux 2 LTS Candidate AMI 2017.12.0 (HVM), SSD Volume Type
    slalom0318-labuser19 = "ami-6d263d09" #Amazon Linux 2 LTS Candidate AMI 2017.12.0 (HVM), SSD Volume Type
    slalom0318-labuser20 = "ami-6d263d09" #Amazon Linux 2 LTS Candidate AMI 2017.12.0 (HVM), SSD Volume Type
    slalom0318-labuser21 = "ami-6d263d09" #Amazon Linux 2 LTS Candidate AMI 2017.12.0 (HVM), SSD Volume Type
    slalom0318-labuser22 = "ami-6d263d09" #Amazon Linux 2 LTS Candidate AMI 2017.12.0 (HVM), SSD Volume Type
    slalom0318-labuser23 = "ami-6d263d09" #Amazon Linux 2 LTS Candidate AMI 2017.12.0 (HVM), SSD Volume Type
    slalom0318-labuser24 = "ami-6d263d09" #Amazon Linux 2 LTS Candidate AMI 2017.12.0 (HVM), SSD Volume Type
    slalom0318-labuser25 = "ami-6d263d09" #Amazon Linux 2 LTS Candidate AMI 2017.12.0 (HVM), SSD Volume Type
    slalom0318-labuser26 = "ami-6d263d09" #Amazon Linux 2 LTS Candidate AMI 2017.12.0 (HVM), SSD Volume Type
    slalom0318-labuser27 = "ami-6d263d09" #Amazon Linux 2 LTS Candidate AMI 2017.12.0 (HVM), SSD Volume Type
    slalom0318-labuser28 = "ami-6d263d09" #Amazon Linux 2 LTS Candidate AMI 2017.12.0 (HVM), SSD Volume Type
    slalom0318-labuser29 = "ami-6d263d09" #Amazon Linux 2 LTS Candidate AMI 2017.12.0 (HVM), SSD Volume Type
    slalom0318-labuser30 = "ami-6d263d09" #Amazon Linux 2 LTS Candidate AMI 2017.12.0 (HVM), SSD Volume Type
    slalom0318-labuser97 = "ami-db1688a2" #Amazon Linux 2 LTS Candidate AMI 2017.12.0 (HVM), SSD Volume Type
    slalom0318-labuser98 = "ami-db1688a2" #Amazon Linux 2 LTS Candidate AMI 2017.12.0 (HVM), SSD Volume Type
    slalom0318-labuser99 = "ami-db1688a2" #Amazon Linux 2 LTS Candidate AMI 2017.12.0 (HVM), SSD Volume Type
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
