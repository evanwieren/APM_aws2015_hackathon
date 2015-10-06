resource "aws_security_group" "BounceBox" {
  name = "BounceBox"
  description = "Allow all inbound traffic"
  vpc_id = "${aws_vpc.2015AWSHackathon.id}"

  ingress {
      from_port = 22
      to_port = 22
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
      from_port = 0
      to_port = 0
      protocol = "-1"
      cidr_blocks = ["10.0.0.0/8"]
  }
}

resource "aws_security_group" "externallb" {
  name = "externallb"
  description = "Allow all inbound traffic"
  vpc_id = "${aws_vpc.2015AWSHackathon.id}"

  ingress {
      from_port = 443
      to_port = 443
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
      from_port = 0
      to_port = 0
      protocol = "-1"
      cidr_blocks = ["10.0.0.0/0"]
  }
}

resource "aws_security_group" "appserver" {
  name = "appserver"
  description = "Allow all inbound traffic"
  vpc_id = "${aws_vpc.2015AWSHackathon.id}"

  ingress {
      from_port = 80
      to_port = 80
      protocol = "tcp"
      security_groups = ["${aws_security_group.externallb.id}"]
  }
  ingress {
      from_port = 22
      to_port = 22
      protocol = "tcp"
      security_groups = ["${aws_security_group.BounceBox.id}"]
  }

  egress {
      from_port = 0
      to_port = 0
      protocol = "-1"
      cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "rds_sg" {
  name = "rds_sg"
  description = "Allow all inbound traffic"
  vpc_id = "${aws_vpc.2015AWSHackathon.id}"

  ingress {
      from_port = 3306
      to_port = 3306
      protocol = "tcp"
      security_groups = ["${aws_security_group.appserver.id}"]
  }
  egress {
      from_port = 0
      to_port = 0
      protocol = "-1"
      security_groups = ["${aws_security_group.appserver.id}"]
  }
}
