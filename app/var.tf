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

variable "app_instance_ami" {
  type = "map"

  default = {
    slalom0318-labuser   = "ami-6d263d09" #Amazon Linux 2 LTS Candidate AMI 2017.12.0 (HVM), SSD Volume Type
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
    prod                 = "ami-6d263d09" #Amazon Linux 2 LTS Candidate AMI 2017.12.0 (HVM), SSD Volume Type
  }
}

data "aws_vpc" "core_vpc" {
  filter {
    name   = "tag:Name"
    values = ["${var.environment}"]
  }
}

data "aws_subnet" "public-01" {
  filter {
    name   = "tag:Name"
    values = ["${var.environment}-public-01"]
  }
}

data "aws_subnet" "public-02" {
  filter {
    name   = "tag:Name"
    values = ["${var.environment}-public-02"]
  }
}

data "aws_subnet" "private-01" {
  filter {
    name   = "tag:Name"
    values = ["${var.environment}-private-01"]
  }
}

data "aws_subnet" "private-02" {
  filter {
    name   = "tag:Name"
    values = ["${var.environment}-private-02"]
  }
}

data "aws_subnet" "dmz-01" {
  filter {
    name   = "tag:Name"
    values = ["${var.environment}-dmz-01"]
  }
}

data "aws_subnet" "dmz-02" {
  filter {
    name   = "tag:Name"
    values = ["${var.environment}-dmz-02"]
  }
}
