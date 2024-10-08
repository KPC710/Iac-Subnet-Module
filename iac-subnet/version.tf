terraform {
  required_version = ">=1.6.6"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=4.65.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}
