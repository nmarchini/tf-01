resource "aws_internet_gateway" "gw" {
  vpc_id = module.vpc.id

  tags = merge(module.tags.tags, { Name : "main-igw-${var.environment}" })
}

resource "aws_eip" "nat_eip" {
  vpc = true
}

resource "aws_nat_gateway" "core_nat" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = aws_subnet.public-01.id
  depends_on    = [aws_internet_gateway.gw]

  tags = merge(module.tags.tags, { Name : "nat-gw-${var.environment}" })
}
