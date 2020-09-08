resource "aws_instance" "bastion" {
  ami                    = lookup(var.bastion_instance_ami, var.environment)
  instance_type          = "t3.micro"
  availability_zone      = var.availability_zone_A
  key_name               = var.bastion_ssh_key
  monitoring             = true
  vpc_security_group_ids = [aws_security_group.bastion_access.id]
  subnet_id              = aws_subnet.dmz-01.id
  #checkov:skip=CKV_AWS_8:Issue with this check
  #checkov:skip=CKV_AWS_79:Issue with this check
  encrypted = true
  user_data = data.cloudinit_config.cloudinit

  tags = {
    Name = "bastion-${var.environment}"
  }
}

data "cloudinit_config" "cloudinit" {
  gzip          = true
  base64_encode = true

  part {
    filename     = "cloud_init.sh"
    content_type = "text/x-shellscript"
    content      = templatefile("bastion_user_data.sh")
  }
}

output "bastion_dns" {
  value = "${aws_instance.bastion.public_dns}"
}
