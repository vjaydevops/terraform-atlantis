terraform {
  backend "remote" {
    organization = "itd-demo"

    workspaces {
      name = "itd-terraform-develop"
    }
  }
}
