variable "aws_region" {
  type        = string
  default     = "us-west-2"
}

variable "azure_region" {
  type        = string
  default     = "East US"
}

variable "aws_vpc_id" {
  type        = string
}

variable "aws_subnet_id" {
  type        = string
}

variable "aws_eks_cluster_name" {
  type        = string
  default     = "aws-eks-cluster"
}

variable "aws_acr_name" {
  type        = string
  default     = "aws-acr"
}

variable "aks_cluster_name" {
  type        = string
  default     = "azure-aks-cluster"
}

variable "aks_cluster_dns_prefix" {
  type        = string
  default     = "azureakscluster"
}

variable "resource_group_name" {
  type        = string
  default     = "azure-rg"
}

variable "vnet_name" {
  type        = string
  default     = "azure-vnet"
}

variable "vnet_address_space" {
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_address_prefix" {
  type        = string
  default     = "10.0.1.0/24"
}

variable "managed_identity_name" {
  type        = string
  default     = "azure-managed-identity"
}

variable "application_insights_name" {
  type        = string
  default     = "azure-app-insights"
}

variable "log_analytics_workspace_name" {
  type        = string
  default     = "azure-log-analytics"
}
