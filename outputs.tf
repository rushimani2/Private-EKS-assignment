output "cluster_name" {
  value = aws_eks_cluster.private_cluster.name
}

output "cluster_endpoint" {
  value = aws_eks_cluster.private_cluster.endpoint
}
