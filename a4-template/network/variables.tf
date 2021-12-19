variable "web_cidr_block" {
    type = string 
}

variable "was_cidr_block" {
    type = string
}
variable "tags" {
    type = map(string)
    default = {}
  
}
variable "project" {
  
}

variable "purpose" {
  
}