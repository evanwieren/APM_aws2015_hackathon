resource "aws_db_instance" "APMRDS" {
    identifier = "${var.db_instance_name}"
    allocated_storage = 10
    engine = "mysql"
    engine_version = "5.6.23"
    instance_class = "db.m3.medium"
    name = "${var.db_name}"
    username = "${var.db_username}"
    password = "${var.db_passwd}"
    db_subnet_group_name = "rds1"
    parameter_group_name = "default.mysql5.6"
    vpc_security_group_ids = ["${aws_security_group.rds_sg.id}"]
}
resource "aws_db_subnet_group" "rds1" {
    name = "rds1"
    description = "Our main group of subnets"
    subnet_ids = ["${aws_subnet.rds1.id}", "${aws_subnet.rds2.id}"]
}
