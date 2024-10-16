provider "aws" {
  region = "ap-south-1"
}

terraform {
  backend "s3" {
    bucket = "my-s3-backend-for-terraform6785759"
    key = "atlantis/dev/terraform.tfstate"
    region = "ap-south-1"
    profile = "default"
  }
}

resource "aws_instance" "this" {
  ami = "ami-03f4878755434977f"
  instance_type = "t2.micro"

  tags = {
    Name = "custome-dev-ec2"
  }
}
