resource "aws_instance" "BounceBox" {
    ami = "ami-9f92edfa"
    instance_type = "t2.medium"
    key_name = "${var.key_name}"
    subnet_id =  "${aws_subnet.PrimaryPublic1.id}"
    associate_public_ip_address = "true"
    availability_zone = "us-east-1e"
    vpc_security_group_ids = ["${aws_security_group.BounceBox.id}"]
    tags {
        Name = "BounceBox"
    }
}
