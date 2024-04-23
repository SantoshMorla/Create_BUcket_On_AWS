variable "bucket_Trane" {}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "bucket_Trane" {
  bucket = var.bucket_Trane
  acl    = "public-read"

  tags = {
    Name        = var.bucket_Trane
    Environment = "Devlopment"
  }
}
