resource "aws_s3_bucket" "${var.2015AWSHackathonS3bucket}" {
    bucket = "${var.2015AWSHackathonS3bucket}"
    acl = "private"
    #policy = "${aws_iam_policy.s3userpolicy.id}"
    tags {
        Name = "${var.2015AWSHackathonS3bucket}"
    }
}
