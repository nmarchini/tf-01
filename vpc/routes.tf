resource "aws_route_table" "public" {
  vpc_id = module.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = merge(module.tags.tags, { Name : "public-${var.environment}" })
}

resource "aws_route_table" "private" {
  vpc_id = module.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.core_nat.id
  }

  tags = merge(module.tags.tags, { Name : "private-${var.environment}" })
}

resource "aws_route_table_association" "route_public_a" {
  subnet_id      = aws_subnet.public-01.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "route_public_b" {
  subnet_id      = aws_subnet.public-02.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "route_dmz_a" {
  subnet_id      = aws_subnet.dmz-01.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "route_dmz_b" {
  subnet_id      = aws_subnet.dmz-02.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "route_private_a" {
  subnet_id      = aws_subnet.private-01.id
  route_table_id = aws_route_table.private.id
}

resource "aws_route_table_association" "route_private_b" {
  subnet_id      = aws_subnet.private-02.id
  route_table_id = aws_route_table.private.id
}
