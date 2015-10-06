resource "aws_instance" "appserver1" {
    ami = "ami-9f92edfa"
    instance_type = "t2.medium"
    key_name = "${var.key_name}"
    subnet_id =  "${aws_subnet.PrimaryPublic1.id}"
    associate_public_ip_address = "true"
    availability_zone = "us-east-1e"
    vpc_security_group_ids = ["${aws_security_group.appserver.id}"]
    tags {
        Name = "appserver1"
    }
}
resource "aws_eip" "appserver1eip" {
    instance = "${aws_instance.appserver1.id}"
    vpc = true
}
resource "aws_instance" "appserver2" {
    ami = "ami-9f92edfa"
    instance_type = "t2.medium"
    key_name = "${var.key_name}"
    subnet_id =  "${aws_subnet.PrimaryPublic1.id}"
    associate_public_ip_address = "true"
    availability_zone = "us-east-1e"
    vpc_security_group_ids = ["${aws_security_group.appserver.id}"]
    tags {
        Name = "appserver2"
    }
}
resource "aws_eip" "appserver2eip" {
    instance = "${aws_instance.appserver2.id}"
    vpc = true
}
