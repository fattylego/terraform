#Define keys and region
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
        region = "us-west-2"
}

#Define s3 bucket
resource "aws_s3_bucket" "bucket1" {
        bucket = "bucket-launched-using-terrafrom-20210424"
        acl = "private" # or can be "public-read"
        tags = {
                Name = "Bucket"
                Environment = "Production"
        }
}
