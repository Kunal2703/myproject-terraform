# 🚀 AWS Infrastructure with Terraform (VPC, ALB, ASG, RDS, Bastion)

This Terraform module provisions a **secure, production-ready AWS environment** in the **Mumbai (ap-south-1)** region.  
It includes networking, compute, database, security, and a bastion host for controlled SSH access.

---

## 📐 Architecture Overview

The infrastructure includes:

- **Networking**
  - 1 VPC with multiple public and private subnets across AZs
  - Internet Gateway for outbound access in public subnets
  - NAT Gateways for secure outbound access from private subnets
  - Route tables for public and private subnet traffic

- **Security**
  - **ALB SG** → allows HTTP/HTTPS from the internet
  - **App SG** → allows traffic only from ALB and Bastion
  - **RDS SG** → allows traffic only from App EC2 instances
  - **Bastion SG** → allows SSH only from your admin IP

- **Compute**
  - Application Load Balancer in public subnets
  - Auto Scaling Group (EC2 instances) in private subnets
  - Bastion host in public subnet for SSH access

- **Database**
  - RDS PostgreSQL (multi-AZ, private subnets, no public access)

---
