variable "aws_region" {
  description = "AWS region to host the S3 bucket"
  type        = string
  default     = "us-west-2"
}

variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
  default = "kenejdhsbns"
}
