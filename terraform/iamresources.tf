resource "aws_iam_user" "s3user" {
    name = "s3user"
}

resource "aws_iam_policy" "apmAppUser" {
    name = "s3userpolicy"
    path = "/"
    description = "My test policy"
  policy = <<EOF
{
"Version": "2012-10-17",
"Statement": [
  {
    "Action": [
      "s3:*"
    ],
    "Effect": "Allow",
    "Resource": "*"
  }
]
}
EOF
}
