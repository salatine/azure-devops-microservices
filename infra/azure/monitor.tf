resource "azurerm_monitor_diagnostic_setting" "aks_diagnostic" {
  name                           = "aks-diagnostic-settings"
  target_resource_id             = azurerm_kubernetes_cluster.aks_cluster.id
  log_analytics_workspace_id     = azurerm_log_analytics_workspace.workspace.id
  metric {
    category = "AllMetrics"
  }
  log {
    category = "KubeAudit"
  }
}

resource "azurerm_log_analytics_workspace" "workspace" {
  name                = var.log_analytics_workspace_name
  location            = var.azure_region
  resource_group_name = azurerm_resource_group.rg.name
  sku                 = "PerGB2018"
}
