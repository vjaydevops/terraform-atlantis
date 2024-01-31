provider "aws" {
  region = "ap-south-1"
}

terraform {
  backend "s3" {
    bucket = "s3-backend-terraform-project-1"
    key = "atlantis/terraform.tfstate"
    region = "ap-south-1"
    profile = "default"
  }
}

resource "aws_instance" "this" {
  ami = "ami-03f4878755434977f"
  instance_type = "t2.micro"

  tags = {
    Name = "terraform-atlantis-demo"
  }
}

resource "aws_s3_bucket" "example" {
  bucket = "my-atlantis-test-bucket1234567890"

  tags = {
    Name        = "atlantis-bucket-test"
    Environment = "Dev"
  }
}
