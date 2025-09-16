# AWS Infrastructure with Terraform (VPC, ALB, ASG, Bastion, EKS)

This Terraform module provisions a **secure, production-ready AWS environment** in the **Mumbai (ap-south-1)** region.  
It includes networking, compute, Kubernetes (EKS), security groups, and a bastion host for controlled SSH access.

---

## 📐 Architecture Overview

The infrastructure includes:

### Networking
- 1 VPC with multiple **public** and **private** subnets across Availability Zones
- Internet Gateway for outbound access in **public subnets**
- NAT Gateways for secure outbound access from **private subnets**
- Route tables for public and private subnet traffic

### Security
- **ALB Security Group** → allows HTTP/HTTPS from the internet
- **App Security Group** → allows traffic only from ALB and Bastion
- **Bastion Security Group** → allows SSH only from your admin IP
- **EKS IAM Roles & Policies** → worker nodes can join cluster and pull images from ECR

### Compute
- **Application Load Balancer (ALB)** in public subnets
- **Auto Scaling Group (ASG)** for EC2 instances in private subnets
- **Bastion Host** in public subnet for SSH access

### Kubernetes (EKS)
- **EKS Control Plane**
  - Managed by AWS with IAM role for cluster operations
- **EKS Node Group**
  - Autoscaling worker nodes in private subnets
  - IAM policies:
    - `AmazonEKSWorkerNodePolicy`
    - `AmazonEKS_CNI_Policy`
    - `AmazonEC2ContainerRegistryReadOnly`
- Integrated with VPC networking (public + private subnets)

---

## Deployment Steps

**Clone this repository**
   ```bash
   git clone https://github.com/Kunal2703/myproject-terraform.git
   cd devops-task-terraform/envs/dev
  ```

### Initialize Terraform
```bash
terraform init
```
### Review the execution plan
```bash
terraform plan
```

### Apply the configuration
```bash
terraform apply
```



