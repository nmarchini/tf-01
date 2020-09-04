resource "aws_subnet" "private-01" {
  vpc_id            = "${module.vpc.id}"
  cidr_block        = "${lookup(var.vpc_cidr_base, terraform.workspace)}.${var.subnet_private_a_cidr_range}"
  availability_zone = "${var.availability_zone_A}"

  tags {
    Name = "${terraform.workspace}-private-01"
  }
}

resource "aws_subnet" "private-02" {
  vpc_id            = "${module.vpc.id}"
  cidr_block        = "${lookup(var.vpc_cidr_base, terraform.workspace)}.${var.subnet_private_b_cidr_range}"
  availability_zone = "${var.availability_zone_B}"

  tags {
    Name = "${terraform.workspace}-private-02"
  }
}
