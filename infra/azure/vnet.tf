resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  address_space        = [var.vnet_address_space]
  location            = var.azure_region
  resource_group_name = azurerm_resource_group.rg.name

  tags = {
    Environment = "Production"
  }
}

resource "azurerm_subnet" "aks_subnet" {
  name                 = "aks-subnet"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = [var.subnet_address_prefix]
}
