variable "project_name" {}
variable "region" {}

variable "availability_zones" {
  type    = list(string)
  default = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

#Public
variable "publicsubnets" {
  type = map(object({
    cidr_block        = string
    availability_zone = string
  }))
}

# Private
variable "privatesubnets" {
  type = map(object({
    cidr_block        = string
    availability_zone = string
  }))
}

# Database
variable "dbsubnets" {
  type = map(object({
    cidr_block        = string
    availability_zone = string
  }))
}