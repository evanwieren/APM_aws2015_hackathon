# Create a new load balancer
resource "aws_elb" "apm" {
  name = "apm-elb"
#  availability_zones = ["us-east-1e", "us-east-1c","us-east-1b"]
  subnets = ["${aws_subnet.PrimaryPublic1.id}", "${aws_subnet.PrimaryPublic1.id}"]
  security_groups = ["${aws_security_group.externallb.id}"]

  listener {
    instance_port = 8
    instance_protocol = "http"
    lb_port = 443
    lb_protocol = "https"
    ssl_certificate_id = "arn:aws:iam::183439752388:server-certificate/apmCert"
  }

  health_check {
    healthy_threshold = 2
    unhealthy_threshold = 2
    timeout = 3
    target = "HTTP:8000/"
    interval = 30
  }

  instances = ["${aws_instance.appserver1.id}", "${aws_instance.appserver2.id}"]
  cross_zone_load_balancing = true
  idle_timeout = 400
  connection_draining = true
  connection_draining_timeout = 400

  tags {
    Name = "apm-elb"
  }
}
