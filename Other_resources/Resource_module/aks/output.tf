output "cluster_id" {
  value = azurerm_kubernetes_cluster.aks_cluster.id
}

output "cluster_name" {
  value = azurerm_kubernetes_cluster.aks_cluster.name
}

output "node_resource_group_name" {
  value = azurerm_kubernetes_cluster.aks_cluster.node_resource_group
}
