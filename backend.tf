terraform {
  backend "remote" {
    organization = "itd-demo"

    workspaces {
      name = "itd-dev-aws-infra"
    }
  }
}
