provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "this" {
  ami = "ami-0f918f7e67a3323f0"
  instance_type = "t2.small"
  tags = {
    Name = "terraform-cloud-ec2-new"
  }
}


