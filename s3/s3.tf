provider "aws" {
  region  = "ap-northeast-2"
  profile = "terraform_user"
}

resource "aws_s3_bucket" "s3_terraform_state" {
  bucket = "hong-terraform-state"
  acl    = "private"

  lifecycle {
    prevent_destroy = false # 삭제 방지
  }
  versioning {
    enabled = true
  }
}

resource "aws_dynamodb_table" "dynamo_locks" {
  name           = "hong-locks"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"
  read_capacity  = 5
  write_capacity = 5

  attribute {
    name = "LockID"
    type = "S"
  }
}

terraform {
  backend "s3" {
    bucket         = "hong-terraform-state"
    region         = "ap-northeast-2"
    profile        = "terraform_user"
    encrypt        = true
    dynamodb_table = "hong-locks"

    key = "s3/terraform.tfstate"
  }

}



