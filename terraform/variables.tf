variable "vpc_name"{
  description = "the name of the vpc"
  default = "2015AWSHackathon"
}
variable "vpc_cidr"{
  description = "the vpc cidr_block"
  default = "10.0.0.0/8"
}
variable "region"{
  description = "the vpc cidr_block"
  default = "us-east-1"
}
variable "db_name"{
  description = "the name of the main db"
  default = "apm"
}
variable "db_instance_name"{
  description = "the name of the rds instance"
  default = "apmrds"
}

variable "2015AWSHackathonS3bucket"{
  description = "the s3 bucket to use"
  default = "2015AWSHackathonS3bucket"
}
variable "db_username"{
  description = "the DB username"
  default = "apm"
}

variable "aws_access_key"{}
variable "aws_secret_key"{}
variable "db_passwd" {}
variable "key_name"{
  description = "20"
  default = "2015AWSHackathon"
}
