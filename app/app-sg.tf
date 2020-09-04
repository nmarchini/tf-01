resource "aws_security_group" "app_access" {
  name        = "${var.environment}-app-access"
  description = "Allows access from Load Balancer"
  vpc_id      = "${data.aws_vpc.core_vpc.id}"

  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "TCP"
    cidr_blocks = ["${data.aws_subnet.public-01.cidr_block}", "${data.aws_subnet.public-02.cidr_block}"]
  }

  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "TCP"
    cidr_blocks = ["${data.aws_subnet.dmz-01.cidr_block}", "${data.aws_subnet.dmz-02.cidr_block}"]
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
    Name = "${var.environment}-app-access"
    Env  = "${var.environment}"
  }
}
