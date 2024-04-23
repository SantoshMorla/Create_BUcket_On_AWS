variable "bucket_name" {
  type = string
  description = "bucket name"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket  = "buckettrane"
  tags    = {
	Name          = "MyS3Bucket"
	Environment    = "Dev"
  }
}
