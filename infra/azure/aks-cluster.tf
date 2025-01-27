provider "azurerm" {
  features {}
}

resource "azurerm_kubernetes_cluster" "aks_cluster" {
  name                = var.aks_cluster_name
  location            = var.azure_region
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = var.aks_cluster_dns_prefix
  kubernetes_version  = "1.21.2"

  default_node_pool {
    name       = "default"
    node_count = 2
    vm_size    = "Standard_DS2_v2"
    os_disk_size_gb = 30
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Production"
  }
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.azure_region
}
