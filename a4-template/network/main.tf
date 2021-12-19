module "hong_web" {
  source = "./web"

  hong_vpc_web_cidr_block= var.web_cidr_block
  tags = var.tags
  project = var.project
  purpose = var.purpose

}

module "hong_was" {
    source = "./was"

    hong_vpc_was_cidr_block = var.was_cidr_block 
    tags = var.tags
    project = var.project
    purpose = var.purpose  
}