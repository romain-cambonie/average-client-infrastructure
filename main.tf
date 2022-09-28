terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "average"

    workspaces {
      name: "default-for-init"
      prefix = "client-"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.11"
    }
  }
}

provider "aws" {
  region = "eu-west-3"
}
