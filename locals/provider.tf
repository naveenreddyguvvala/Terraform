terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.16.0"
    }
  }

  backend "s3" {
    bucket  = "remote-state-locals-86s"
    key     = "locals-demo/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true

  }
}

provider "aws" {
  region = "us-east-1"
}
