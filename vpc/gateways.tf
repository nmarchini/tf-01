resource "aws_internet_gateway" "gw" {
  vpc_id = "${module.vpc.id}"

  tags {
    "Name" = "main-igw"
    "Env"  = "${terraform.workspace}"
  }
}

resource "aws_eip" "nat_eip" {
  vpc = true
}

resource "aws_nat_gateway" "core_nat" {
  allocation_id = "${aws_eip.nat_eip.id}"
  subnet_id     = "${aws_subnet.public-01.id}"
  depends_on    = ["aws_internet_gateway.gw"]

  tags {
    "Name" = "${terraform.workspace}-nat-gw"
    "Env"  = "${terraform.workspace}"
  }
}
