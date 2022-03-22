terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.55.0"
    }
  }
  required_version = "= 1.0.4"
}

provider "aws" {
  region = "ap-northeast-2"
}