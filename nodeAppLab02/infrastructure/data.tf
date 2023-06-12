data "aws_eks_cluster" "existing" {
  name = module.eks_cluster.cluster_id
}

data "aws_eks_cluster_auth" "existing" {
  name = module.eks_cluster.cluster_id
}
