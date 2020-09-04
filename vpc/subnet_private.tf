resource "aws_subnet" "private-01" {
  vpc_id            = module.vpc.id
  cidr_block        = "${var.vpc_cidr_base}${local.subnet_private_a_cidr_range}"
  availability_zone = var.availability_zone_A

  tags = {
    Name = "private-01-${var.environment}"
  }
}

resource "aws_subnet" "private-02" {
  vpc_id            = module.vpc.id
  cidr_block        = "${var.vpc_cidr_base}${local.subnet_private_b_cidr_range}"
  availability_zone = var.availability_zone_B

  tags = {
    Name = "private-02-${var.environment}"
  }
}
