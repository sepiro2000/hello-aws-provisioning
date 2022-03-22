terraform {
  backend "s3" {
    bucket         = "krosslab-dev-apnortheast2-tfstate"
    key            = "terraform/vpc/krosslab_dev"
    region         = "ap-northeast-2"
    encrypt        = true
    dynamodb_table = "krosslab-dev-terraform-lock"
  }
}