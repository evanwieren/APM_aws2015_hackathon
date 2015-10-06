resource "aws_security_group" "BounceBox" {
  name = "BounceBox"
  description = "Allow all inbound traffic"
  vpc_id = "${aws_vpc.2015AWSHackathon.id}"
  
  ingress {
      from_port = 0
      to_port = 0
      protocol = "-1"
      cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
      from_port = 0
      to_port = 0
      protocol = "-1"
      cidr_blocks = ["0.0.0.0/0"]
  }
}
