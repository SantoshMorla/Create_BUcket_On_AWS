variable "bucket_trane" {}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "bucket_trane" {
  bucket = var.bucket_trane
  acl    = "public-read"

  tags = {
    Name        = var.bucket_trane
    Environment = "Devlopment"
  }
}
