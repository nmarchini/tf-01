resource "aws_security_group" "bastion_access" {
  name        = "bastion_access"
  description = "Allows SSH to Bastion from known source IP"
  vpc_id      = module.vpc.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "TCP"
    cidr_blocks = ["79.173.148.100/32"] #Known Source IP
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "bastion_access-${var.environment}"
    Env  = var.environment
  }
}
