variable "project_name" {}
variable "region" {}
variable "vpc_cidr" {}

variable "availability_zones" {
  type    = list(string)
  default = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

#Public
variable "publicsubnets" {
  type = list(object({
    name              = string
    cidr              = string
    availability_zone = string
  }))
}

# Private
variable "privatesubnets" {
  type = list(object({
    name              = string
    cidr              = string
    availability_zone = string
  }))
}

# Database
variable "databasesubnets" {
  type = list(object({
    name              = string
    cidr              = string
    availability_zone = string
  }))
}