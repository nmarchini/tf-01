resource "aws_instance" "bastion" {
  ami               = lookup(var.bastion_instance_ami, var.environment)
  instance_type     = "t3.micro"
  availability_zone = var.availability_zone_A
  #key_name               = "slalom-demo-lon"
  monitoring             = true
  vpc_security_group_ids = [aws_security_group.bastion_access.id]
  subnet_id              = aws_subnet.dmz-01.id

  user_data = <<-EOF
        #!/bin/bash
        yum install git -y
        yum install python -y
        yum install python-pip -y
        pip install ansible
        EOF

  tags = {
    Name = "bastion-${var.environment}"
  }
}

output "bastion_dns" {
  value = "${aws_instance.bastion.public_dns}"
}
