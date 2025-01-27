resource "azurerm_user_assigned_identity" "aks_identity" {
  name                = var.managed_identity_name
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.azure_region
}

resource "azurerm_role_assignment" "aks_identity_role" {
  principal_id   = azurerm_user_assigned_identity.aks_identity.principal_id
  role_definition_name = "Contributor"
  scope           = azurerm_resource_group.rg.id
}
