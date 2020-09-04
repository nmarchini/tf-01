resource "aws_security_group" "db_access" {
  name        = "${terraform.workspace}-db-access"
  description = "Allows access from Load Balancer"
  vpc_id      = "${data.aws_vpc.core_vpc.id}"

  ingress {
    from_port   = 27000
    to_port     = 28000
    protocol    = "TCP"
    cidr_blocks = ["${data.aws_subnet.private-01.cidr_block}", "${data.aws_subnet.private-02.cidr_block}"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "TCP"
    cidr_blocks = ["${data.aws_vpc.core_vpc.cidr_block}"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    Name = "${terraform.workspace}-db-access"
    Env  = "${terraform.workspace}"
  }
}
