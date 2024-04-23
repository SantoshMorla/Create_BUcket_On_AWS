variable "bucket_name" {}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name
  acl    = "public"

  tags = {
    Name        = var.bucket_name
    Environment = "Devlopment"
  }
}
