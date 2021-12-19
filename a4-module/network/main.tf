provider "aws" {
  region = "ap-northeast-2"
  profile = "terraform_user"
  
}
/*
data "terraform_remote_state" "hong_vpc" {
  
  backend = "s3"
  config = {
    path = "./terraform.tfstate"
   }
}
*/
module "hong_vpc" {

  source = "../../a4-template/network"

  # WEB
  web_cidr_block = "10.10.0.0/16"
  was_cidr_block = "10.20.0.0/16"
  tags = { Owner = "team" }
  project = "aws4"
  purpose = "test"

  
}