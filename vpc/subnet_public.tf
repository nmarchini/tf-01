resource "aws_subnet" "public-01" {
  vpc_id                  = module.vpc.id
  cidr_block              = "${var.vpc_cidr_base}${local.subnet_public_a_cidr_range}"
  availability_zone       = var.availability_zone_A
  map_public_ip_on_launch = true

  tags = {
    Name = "public-01-${var.environment}"
  }
}

resource "aws_subnet" "public-02" {
  vpc_id                  = module.vpc.id
  cidr_block              = "${var.vpc_cidr_base}${local.subnet_public_b_cidr_range}"
  availability_zone       = var.availability_zone_B
  map_public_ip_on_launch = true

  tags = {
    Name = "public-02-${var.environment}"
  }
}

resource "aws_subnet" "dmz-01" {
  vpc_id                  = module.vpc.id
  cidr_block              = "${var.vpc_cidr_base}${local.subnet_dmz_a_cidr_range}"
  availability_zone       = var.availability_zone_A
  map_public_ip_on_launch = true

  tags = {
    Name = "dmz-01-${var.environment}"
  }
}

resource "aws_subnet" "dmz-02" {
  vpc_id                  = module.vpc.id
  cidr_block              = "${var.vpc_cidr_base}${local.subnet_dmz_b_cidr_range}"
  availability_zone       = var.availability_zone_B
  map_public_ip_on_launch = true

  tags = {
    Name = "dmz-02-${var.environment}"
  }
}
