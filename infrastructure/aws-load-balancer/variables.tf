variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "controller_version" {
  description = "Version of the AWS Load Balancer Controller"
  type        = string
}

variable "namespace" {
  description = "Kubernetes namespace for the AWS Load Balancer Controller"
  type        = string
}
