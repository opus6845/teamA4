output "web_vpc_id" {
  value = aws_vpc.hong_vpc_web.id
}

output "igw_web_id" {
    value = aws_internet_gateway.hong_web_igw.id
}

/*
output "region" {
  value = "${data.aws_region.region.name}"
}

output "avz" {
  value = "${data.aws_availability_zones.available.names}"
}
*/