vpc_name             = "demo"
environment          = "dev"
vpc_cidr_block       = "10.0.0.0/16"
public_subnet_cidrs  = ["10.0.1.0/24", "10.0.2.0/24"]
private_subnet_cidrs = ["10.0.101.0/24", "10.0.102.0/24"]
azs                  = ["ap-south-1a", "ap-south-1b"]



# Application EC2
app_ami           = "ami-0f58b397bc5c1f2e8" # Amazon Linux 2 in Mumbai
app_instance_type = "t3.micro"

# RDS
rds_instance_class = "db.t3.micro"
rds_username       = "postgresadmin"
rds_password       = "SuperSecret123!"




# Bastion
bastion_key_name = "bastion-key"
bastion_ssh_cidr = "203.0.113.25/32" # replace with your public IP
