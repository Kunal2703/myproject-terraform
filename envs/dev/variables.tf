variable "vpc_name" { type = string }
variable "environment" { type = string }
variable "vpc_cidr_block" { type = string }
variable "public_subnet_cidrs" { type = list(string) }
variable "private_subnet_cidrs" { type = list(string) }
variable "azs" { type = list(string) }

# Application EC2
variable "app_ami" { type = string }
variable "app_instance_type" { type = string }

# Bastion
variable "bastion_key_name" { type = string }
variable "bastion_ssh_cidr" { type = string }

# EKS
variable "eks_cluster_name" { type = string }
variable "eks_version" { type = string }
variable "eks_node_instance_type" { type = string }
variable "eks_node_desired_size" { type = number }
variable "eks_node_min_size" { type = number }
variable "eks_node_max_size" { type = number }
