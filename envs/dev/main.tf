module "vpc" {
  source = "modules/vpc"

  vpc_name             = var.vpc_name
  environment          = var.environment
  vpc_cidr_block       = var.vpc_cidr_block
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  azs                  = var.azs

  # Application EC2
  app_ami           = var.app_ami
  app_instance_type = var.app_instance_type

  # Bastion
  bastion_key_name = var.bastion_key_name
  bastion_ssh_cidr = var.bastion_ssh_cidr

  # EKS
  eks_cluster_name        = var.eks_cluster_name
  eks_version             = var.eks_version
  eks_node_instance_type  = var.eks_node_instance_type
  eks_node_desired_size   = var.eks_node_desired_size
  eks_node_min_size       = var.eks_node_min_size
  eks_node_max_size       = var.eks_node_max_size
}
