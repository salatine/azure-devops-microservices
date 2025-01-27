variable "azure_region" {
  type        = string
  default     = "East US"
}

variable "aks_cluster_name" {
  type        = string
  default     = "aks-cluster"
}

variable "aks_cluster_dns_prefix" {
  type        = string
  default     = "aks-cluster"
}

variable "resource_group_name" {
  type        = string
  default     = "aks-rg"
}

variable "vnet_name" {
  type        = string
  default     = "aks-vnet"
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
  default     = "aks-managed-identity"
}

variable "application_insights_name" {
  type        = string
  default     = "aks-app-insights"
}

variable "log_analytics_workspace_name" {
  type        = string
  default     = "aks-log-analytics"
}
