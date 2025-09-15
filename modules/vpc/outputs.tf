output "vpc_id" { value = aws_vpc.main.id }
output "public_subnet_ids" { value = aws_subnet.public[*].id }
output "private_subnet_ids" { value = aws_subnet.private[*].id }
output "alb_dns_name" { value = aws_lb.app_alb.dns_name }

# EKS Outputs
output "eks_cluster_name" { value = aws_eks_cluster.this.name }
output "eks_cluster_endpoint" { value = aws_eks_cluster.this.endpoint }
output "eks_cluster_ca" { value = aws_eks_cluster.this.certificate_authority[0].data }
output "eks_nodegroup_name" { value = aws_eks_node_group.this.node_group_name }
