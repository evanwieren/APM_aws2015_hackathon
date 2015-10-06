provider "aws" {
    access_key = "${var.aws_access_key}"
    secret_key = "${var.aws_secret_key}"
    region = "${var.region}"
}

resource "aws_vpc" "2015AWSHackathon" {
    cidr_block = "10.0.0.0/16"
    enable_dns_hostnames = "true"
    enable_dns_support = "true"

    tags {
        Name = "2015AWSHackathon"
    }
}
resource "aws_internet_gateway" "2015AWSHackathon-Gateway" {
    vpc_id = "${aws_vpc.2015AWSHackathon.id}"

    tags {
        Name = "main"
    }
}
