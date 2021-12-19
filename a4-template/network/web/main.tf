/*
provider "aws" {
    region = "${output.region}"
    profile = "terraform_user"
  
}
data "terraform_remote_state" "s3" {
  backend = "s3"
}


data "aws_availability_zones" "available" {

  
}


data "aws_region" "region" {

}

*/

resource "aws_vpc" "hong_vpc_web" {
  cidr_block           = var.hong_vpc_web_cidr_block
  enable_dns_hostnames = true

  tags = merge(
    var.tags,
    {
      "Name" = "vpc-${var.project}-${var.purpose}"
    }
  )

}

resource "aws_internet_gateway" "hong_web_igw" {
  vpc_id = aws_vpc.hong_vpc_web.id

  tags = merge(
    var.tags,
    {
      "Name" = "igw-${var.project}-${var.purpose}"
    }
  )

}
