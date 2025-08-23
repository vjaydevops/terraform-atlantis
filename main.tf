provider "aws" {
  region = "ap-south-1"
}

terraform {
  backend "s3" {
    bucket = "aws-cloudtrail-logs-itd-demo-2025"
    key = "atlantis/terraform.tfstate"
    region = "ap-south-1"
    profile = "default"
  }
}

resource "aws_instance" "this" {
  ami = "ami-0f918f7e67a3323f0"
  instance_type = "t2.micro"
  tags = {
    Name = "terraform-atlantis-demo"
  }
}

#empty line
