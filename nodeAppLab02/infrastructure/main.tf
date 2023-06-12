provider "aws" {
  region = "us-west-2"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.6"
    }
  }
}

module "eks_cluster" {
  source = "terraform-aws-modules/eks/aws"
  
  cluster_name                 = "nodeapp-cluster"
  cluster_version              = "1.21"
  vpc_id                       = "vpc-abc123"
  subnet_ids                   = ["subnet-abc123", "subnet-def456"]
  create_eks_service_role      = true
  enable_private_access        = true
  enable_public_access         = true
  enable_cluster_logging_types = ["api", "audit", "authenticator", "controllerManager", "scheduler"]
  kubeconfig_aws_authenticator_additional_args = [
    "--region",
    "us-west-2"
  ]
  oidc_provider_enabled       = true
  oidc_provider_client_id     = "sts.amazonaws.com"
  oidc_provider_groups_claim  = "groups"
  
  manage_default_node_group = true
  default_node_group_desired_capacity = 1
  default_node_group_min_size = 1
  default_node_group_max_size = 2
  default_node_group_instance_type = "t3.medium"
  default_node_group_spot_instance = true
}

resource "aws_security_group_rule" "cluster_egress_rule" {
  description              = "Allow all traffic from cluster control plane to worker nodes"
  type                     = "egress"
  from_port                = 1025
  to_port                  = 65535
  protocol                 = "-1"
  source_security_group_id = module.eks_cluster.cluster_security_group_id
  security_group_id        = module.eks_cluster.default_node_group_security_group_id
}

resource "aws_security_group_rule" "cluster_ingress_rule" {
  description              = "Allow all traffic from cluster control plane to worker nodes"
  type                     = "ingress"
  from_port                = 1025
  to_port                  = 65535
  protocol                 = "-1"
  source_security_group_id = module.eks_cluster.cluster_security_group_id
  security_group_id        = module.eks_cluster.default_node_group_security_group_id
}
