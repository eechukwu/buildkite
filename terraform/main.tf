provider "aws" {
  region = var.aws_region
}

module "s3_bucket" {
  source = "./modules/s3"

  bucket_name = var.bucket_name
}
