terraform {
  required_providers {
    aws = ">= 3.0.0"
  }
}

provider "aws" {
  region = var.aws_region
}

provider "http" {
  # Provider configuration, if any
}
