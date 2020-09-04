resource "aws_security_group" "lb_access" {
  name        = "${var.environment}-lb-access"
  description = "Allows access to Load Balancer from internet"
  vpc_id      = "${data.aws_vpc.core_vpc.id}"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    Name = "${var.environment}-lb-access"
    Env  = "${var.environment}"
  }
}
