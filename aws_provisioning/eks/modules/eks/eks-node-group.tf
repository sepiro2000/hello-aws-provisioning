resource "aws_eks_node_group" "this" {
  cluster_name = aws_eks_cluster.this.name
  node_group_name = "${var.name}-node-group"
  node_role_arn = aws_iam_role.node_group.arn
  subnet_ids = var.subnet_ids
  instance_types = ["t3.large"]
  disk_size = 50

  scaling_config {
    desired_size = 2
    max_size     = 2
    min_size     = 2
  }
}