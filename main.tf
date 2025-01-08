module "network" {
  source          = "github.com/apgaua/terraform-modules//networking-module/"
  project_name    = var.project_name
  vpc_cidr        = var.vpc_cidr
  region          = var.region
  databasesubnets = var.databasesubnets
  privatesubnets  = var.privatesubnets
  publicsubnets   = var.publicsubnets
}