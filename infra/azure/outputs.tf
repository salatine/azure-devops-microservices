output "aks_cluster_name" {
  value = azurerm_kubernetes_cluster.aks_cluster.name
}

output "aks_cluster_endpoint" {
  value = azurerm_kubernetes_cluster.aks_cluster.kube_config.0.host
}

output "aks_cluster_identity" {
  value = azurerm_kubernetes_cluster.aks_cluster.identity[0].user_assigned_identity
}

output "application_insights_instrumentation_key" {
  value = azurerm_application_insights.app_insights.instrumentation_key
}
