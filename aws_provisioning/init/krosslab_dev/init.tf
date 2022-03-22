provider "aws" {
  region = "ap-northeast-2"
}

resource "aws_s3_bucket" "this" {
  bucket = "krosslab-dev-apnortheast2-tfstate"
}

resource "aws_dynamodb_table" "this" {
  name           = "krosslab-dev-terraform-lock"
  hash_key       = "LockID"
  billing_mode   = "PAY_PER_REQUEST"

  attribute {
    name = "LockID"
    type = "S"
  }
}