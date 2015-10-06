# Regluar instance public subnets
resource "aws_subnet" "PrimaryPublic1" {
    vpc_id = "${aws_vpc.2015AWSHackathon.id}"
    cidr_block = "10.0.1.0/24"
    map_public_ip_on_launch = "true"
    availability_zone = "us-east-1e"
    tags {
        Name = "PrimaryPublic"
    }
}

resource "aws_subnet" "PrimaryPublic2" {
    vpc_id = "${aws_vpc.2015AWSHackathon.id}"
    cidr_block = "10.0.2.0/24"
    map_public_ip_on_launch = "true"
    availability_zone = "us-east-1c"
    tags {
        Name = "PrimaryPublic2"
    }
}
#DB Subnets
resource "aws_subnet" "rds1" {
    vpc_id = "${aws_vpc.2015AWSHackathon.id}"
    cidr_block = "10.0.20.0/24"
    availability_zone = "us-east-1e"
    tags {
        Name = "RDS1"
    }
}
resource "aws_subnet" "rds2" {
    vpc_id = "${aws_vpc.2015AWSHackathon.id}"
    cidr_block = "10.0.21.0/24"
    availability_zone = "us-east-1c"
    tags {
        Name = "RDS2"
    }
}
