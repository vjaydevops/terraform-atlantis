provider "aws" {
  region = "ap-south-1"
}

terraform {
  backend "s3" {
    bucket = "my-s3-backend-for-terraform6785759"
    key = "atlantis/terraform.tfstate"
    region = "ap-south-1"
    profile = "default"
  }
}


