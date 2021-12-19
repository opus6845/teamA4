resource "aws_vpc" "hong_vpc_was" {
  cidr_block = var.hong_vpc_was_cidr_block
  enable_dns_hostnames = true

  tags = merge(
    var.tags,
    {
      "Name" = "vpc-${var.project}-${var.purpose}"
    }
  )
}

resource "aws_internet_gateway" "hong_was_igw" {
  
  vpc_id = aws_vpc.hong_vpc_was.id 

}