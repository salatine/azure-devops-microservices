resource "azurerm_application_insights" "app_insights" {
  name                = var.application_insights_name
  location            = var.azure_region
  resource_group_name = azurerm_resource_group.rg.name
  application_type    = "web"

  tags = {
    Environment = "Production"
  }
}
