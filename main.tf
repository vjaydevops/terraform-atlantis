provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucket-itd-tfc"

  tags = {
    Name        = "s3-from-tfc"
    Environment = "Dev"
  }
}

resource "aws_instance" "this" {
  ami = "ami-0dee22c13ea7a9a67"
  instance_type = "t2.micro"
  tags = {
    Name = "terraform-cloud-ec2"
  }
}

