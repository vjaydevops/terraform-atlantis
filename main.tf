############ PROVIDER BLOCK ############
provider "aws" {
  region = "ap-south-1"
  profile = "default"
}

############ SAVING TF STATE FILE #########
terraform {
  backend "s3" {
    bucket = "s3-backend-terraform-project-1"
    key = "atlantis/terraform.tfstate"
    region = "ap-south-1"
    profile = "default"
  }
}

################# EC2 INSTANCE CREATION #########
resource "aws_instance" "this" {
  ami = "ami-03f4878755434977f"
  instance_type = "t2.micro"

  tags = {
    Name = "terraform-atlantis"
  }
}
