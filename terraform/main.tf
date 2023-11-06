provider "aws" {
  region = "eu-west-2"
}

terraform {
  backend "s3" {
    bucket = "future2023bucket"   # Your S3 bucket name
    key    = "state/terraform.tfstate" # Path within the bucket to store the state file
    region = "eu-west-2"          # Replace with the region your bucket is in
    # Additional configurations can be added if needed
  }
}

# Your other Terraform resources...

data "aws_availability_zones" "available" {}

output "available_azs" {
  value = data.aws_availability_zones.available.names
}