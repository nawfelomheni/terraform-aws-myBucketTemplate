
data "aws_caller_identity" "myAccount" {}
resource "aws_s3_bucket" "myBucket" {
  count = var.numberOfBuckets 
  bucket = "my-terraform-bucket-${var.bucketName}"
}
