resource "aws_elb" "web-elb" {
  name            = "${var.environment}-web"
  subnets         = ["${data.aws_subnet.public-01.id}", "${data.aws_subnet.public-02.id}"]
  security_groups = ["${aws_security_group.lb_access.id}"]

  listener {
    instance_port     = 8080
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

  health_check {
    healthy_threshold   = 3
    unhealthy_threshold = 2
    timeout             = 3
    target              = "TCP:8080"
    interval            = 5
  }

  instances                   = ["${aws_instance.app.id}"]
  cross_zone_load_balancing   = true
  idle_timeout                = 60
  connection_draining         = true
  connection_draining_timeout = 300

  tags {
    Name = "${var.environment}-web"
    Env  = "${var.environment}"
  }
}

output "web_elb_dns" {
  value = "${aws_elb.web-elb.dns_name}"
}
