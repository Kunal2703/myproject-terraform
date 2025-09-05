module "vpc" {
  source = "/Users/kunal/Desktop/myproject-terraform/modules/vpc"

  vpc_name             = var.vpc_name
  environment          = var.environment
  vpc_cidr_block       = var.vpc_cidr_block
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  azs                  = var.azs

  # Application
  app_ami           = var.app_ami
  app_instance_type = var.app_instance_type

  # RDS
  rds_instance_class = var.rds_instance_class
  rds_username       = var.rds_username
  rds_password       = var.rds_password


  # New vars for Bastion
  bastion_key_name = var.bastion_key_name
  bastion_ssh_cidr = var.bastion_ssh_cidr
}


