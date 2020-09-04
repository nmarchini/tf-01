resource "aws_subnet" "public-01" {
  vpc_id                  = "${module.vpc.id}"
  cidr_block              = "${lookup(var.vpc_cidr_base, terraform.workspace)}.${var.subnet_public_a_cidr_range}"
  availability_zone       = "${var.availability_zone_A}"
  map_public_ip_on_launch = true

  tags {
    Name = "${terraform.workspace}-public-01"
  }
}

resource "aws_subnet" "public-02" {
  vpc_id                  = "${module.vpc.id}"
  cidr_block              = "${lookup(var.vpc_cidr_base, terraform.workspace)}.${var.subnet_public_b_cidr_range}"
  availability_zone       = "${var.availability_zone_B}"
  map_public_ip_on_launch = true

  tags {
    Name = "${terraform.workspace}-public-02"
  }
}

resource "aws_subnet" "dmz-01" {
  vpc_id                  = "${module.vpc.id}"
  cidr_block              = "${lookup(var.vpc_cidr_base, terraform.workspace)}.${var.subnet_dmz_a_cidr_range}"
  availability_zone       = "${var.availability_zone_A}"
  map_public_ip_on_launch = true

  tags {
    Name = "${terraform.workspace}-dmz-01"
  }
}

resource "aws_subnet" "dmz-02" {
  vpc_id                  = "${module.vpc.id}"
  cidr_block              = "${lookup(var.vpc_cidr_base, terraform.workspace)}.${var.subnet_dmz_b_cidr_range}"
  availability_zone       = "${var.availability_zone_B}"
  map_public_ip_on_launch = true

  tags {
    Name = "${terraform.workspace}-dmz-02"
  }
}
