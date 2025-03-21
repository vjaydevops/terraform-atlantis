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

resource "aws_instance" "this" {
  ami = "ami-0dee22c13ea7a9a67"
  instance_type = "t2.micro"

  tags = {
    Name = "terraform-atlantis-demo"
  }
}

resource "aws_instance" "server2" {
  ami = "ami-0dee22c13ea7a9a67"
  instance_type = "t2.micro"

  tags = {
    Name = "terraform-demo"
  }
}
