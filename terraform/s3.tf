resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name

  tags = {
    Name        = "My S3 Bucket"
    Environment = "Dev"
  }
}

output "s3_bucket_id" {
  value       = aws_s3_bucket.bucket.id
  description = "The ID of the S3 bucket"
}
