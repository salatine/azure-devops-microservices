variable "aws_region" {
  type        = string
  default     = "us-west-2"
}

variable "eks_cluster_name" {
  type        = string
  default     = "eks-cluster"
}

variable "vpc_cidr_block" {
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidr_blocks" {
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "availability_zones" {
  type        = list(string)
  default     = ["us-west-2a", "us-west-2b"]
}
