provider "aws" {
  region = var.region
}

module "vpc" {
  source    = "./modules/vpc"
  cidr_block = var.vpc_cidr_block
  vpc_name   = var.vpc_name
}

module "subnet" {
  source             = "./modules/subnet"
  vpc_id             = module.vpc.vpc_id
  cidr_block         = var.subnet_cidr_block
  availability_zone  = var.availability_zone
  subnet_name        = var.subnet_name
}

module "ec2" {
  source         = "./modules/ec2"
  ami            = var.ami
  instance_type  = var.instance_type
  subnet_id      = module.subnet.subnet_id
  security_groups = var.security_groups
  instance_name   = var.instance_name
}
