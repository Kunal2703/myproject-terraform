variable "vpc_name" {
  type        = string
  description = "Name prefix for the VPC and resources"
}

variable "environment" {
  type        = string
  description = "Environment name (e.g., dev, staging, prod)"
}

variable "vpc_cidr_block" {
  type        = string
  description = "CIDR block for the VPC"
}

variable "public_subnet_cidrs" {
  type        = list(string)
  description = "CIDR blocks for public subnets"
}

variable "private_subnet_cidrs" {
  type        = list(string)
  description = "CIDR blocks for private subnets"
}

variable "azs" {
  type        = list(string)
  description = "Availability Zones"
}




# --- Application EC2 ---
variable "app_ami" {
  type        = string
  description = "AMI ID for application instances"
}

variable "app_instance_type" {
  type        = string
  description = "EC2 instance type for application"
}

# --- RDS ---
variable "rds_instance_class" {
  type        = string
  description = "RDS instance type"
}

variable "rds_username" {
  type        = string
  description = "RDS master username"
}

variable "rds_password" {
  type        = string
  sensitive   = true
  description = "RDS master password"
}





variable "bastion_key_name" {
  type        = string
  description = "EC2 Key Pair name for bastion host"
}

variable "bastion_ssh_cidr" {
  type        = string
  description = "CIDR block allowed to SSH into bastion (e.g., your home IP /32)"
}
