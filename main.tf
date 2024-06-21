provider "aws" {
  region = "ap-south-1"
}

terraform {
  backend "s3" {
    bucket = "my-s3-remote-backend-83264873246"
    key = "atlantis/terraform.tfstate"
    region = "ap-south-1"
    profile = "default"
  }
}

resource "aws_instance" "this" {
  ami = "ami-0e1d06225679bc1c5"
  instance_type = "t2.micro"

  tags = {
    Name = "terraform-atlantis-demo"
  }
}
