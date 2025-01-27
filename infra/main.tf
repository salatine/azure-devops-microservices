provider "aws" {
  region = var.aws_region
}

provider "azurerm" {
  features {}
}

module "aws_infrastructure" {
  source = "./aws"

  aws_region            = var.aws_region
  aws_vpc_id            = var.aws_vpc_id
  aws_subnet_id         = var.aws_subnet_id
  aws_eks_cluster_name  = var.aws_eks_cluster_name
  aws_acr_name          = var.aws_acr_name
}

module "azure_infrastructure" {
  source = "./azure"

  azure_region                 = var.azure_region
  aks_cluster_name             = var.aks_cluster_name
  aks_cluster_dns_prefix       = var.aks_cluster_dns_prefix
  resource_group_name          = var.resource_group_name
  vnet_name                    = var.vnet_name
  vnet_address_space            = var.vnet_address_space
  subnet_address_prefix        = var.subnet_address_prefix
  managed_identity_name        = var.managed_identity_name
  application_insights_name    = var.application_insights_name
  log_analytics_workspace_name = var.log_analytics_workspace_name
}

output "aws_eks_cluster_name" {
  value = module.aws_infrastructure.eks_cluster_name
}

output "aws_eks_cluster_endpoint" {
  value = module.aws_infrastructure.eks_cluster_endpoint
}

output "azure_aks_cluster_name" {
  value = module.azure_infrastructure.aks_cluster_name
}

output "azure_aks_cluster_endpoint" {
  value = module.azure_infrastructure.aks_cluster_endpoint
}

output "azure_application_insights_instrumentation_key" {
  value = module.azure_infrastructure.application_insights_instrumentation_key
}

