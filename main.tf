provider "aws" {
  version = "~> 3.2.0"
  region  = "eu-west-3"
}

data "aws_caller_identity" "myAccount" {}
resource "aws_s3_bucket" "myBucket" {
  count = var.numberOfBuckets 
  bucket = "my_terraform_bucket_${data.aws_caller_identity.myAccount.account_id}"
}