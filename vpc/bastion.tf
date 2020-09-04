resource "aws_instance" "bastion" {
  ami                    = "${lookup(var.bastion_instance_ami, terraform.workspace)}"
  instance_type          = "t2.micro"
  availability_zone      = "${var.availability_zone_A}"
  key_name               = "slalom-demo-lon"
  monitoring             = true
  vpc_security_group_ids = ["${aws_security_group.bastion_access.id}"]
  subnet_id              = "${aws_subnet.dmz-01.id}"

  user_data = <<-EOF
        #!/bin/bash
        yum install git -y
        yum install python -y
        yum install python-pip -y
        pip install ansible
        EOF

  tags {
    "Name" = "${terraform.workspace}-bastion"
    "Env"  = "${terraform.workspace}"
  }
}

output "bastion_dns" {
  value = "${aws_instance.bastion.public_dns           }"
}
