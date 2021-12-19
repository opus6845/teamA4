data "aws_region" "current" {}

output "current_region" {
    value = data.aws_region.current.name
}

data "aws_availability_zones" "available" {
  state = "available"
}

output "available_zone" {
    value = data.aws_availability_zones.available.names
}
/*
output "web_vpc_id" {
    value = module.hong_web.id
}

output "was_vpc_id" {
    value = module.hong_was.id
}
*/