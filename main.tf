#Define keys and region
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  
  backend "s3" {
    bucket  = "terraform-remote-store-25042021"
    encrypt = true
    key     = "terraform-jenkins.tfstate"
    region  = "us-west-2"
  }
}

provider "aws" {
        region = "us-west-2"
}

#Define s3 bucket
resource "aws_s3_bucket" "bucket1" {
        bucket = "bucket-launched-using-terrafrom-20210423"
        acl = "private" # or can be "public-read"
        tags = {
                Name = "Bucket"
                Environment = "Jenkins"
        }
}
