provider "aws" {
  version    = "3.1.0"
  region     = "ap-south-1"
}

resource "random_id" "name_suffix" {
  byte_length = 4
}

resource "aws_s3_bucket" "naveed" {

  bucket = "naved008"
  acl = "private"

  tags = {
     Name = "My Application"
 }
 versioning{
      enabled = true
 }
}
