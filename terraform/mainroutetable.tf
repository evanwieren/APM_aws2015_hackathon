resource "aws_route_table" "PrimaryPublicRouteTable" {
    vpc_id = "${aws_vpc.2015AWSHackathon.id}"
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.2015AWSHackathon-Gateway.id}"
    }

    tags {
        Name = "main"
    }
}
resource "aws_main_route_table_association" "a" {
    vpc_id = "${aws_vpc.2015AWSHackathon.id}"
    route_table_id = "${aws_route_table.PrimaryPublicRouteTable.id}"
}
