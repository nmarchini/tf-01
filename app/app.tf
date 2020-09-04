resource "aws_instance" "app" {
  ami                    = "${lookup(var.app_instance_ami, terraform.workspace)}"
  instance_type          = "t2.micro"
  availability_zone      = "${var.availability_zone_A}"
  key_name               = "slalom-demo-irl"
  monitoring             = true
  vpc_security_group_ids = ["${aws_security_group.app_access.id}"]
  subnet_id              = "${data.aws_subnet.private-01.id}"

  tags {
    "Name" = "${terraform.workspace}-app"
    "Env"  = "${terraform.workspace}"
  }
}

output "app_hostname" {
  value = "${aws_instance.app.private_dns         }"
}
