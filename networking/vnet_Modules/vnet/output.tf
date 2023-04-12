output "vnet_id" {
  value       = azurerm_virtual_network.vnet.id
  description = "ResourceID of Vnet"
}

output "vnet_name" {
  value       = azurerm_virtual_network.vnet.name
  description = "name of Vnet"
}

output "subnet_ids" {
  value = [
    for subnet in azurerm_subnet.vnetsubnet : {
      subnet_name = subnet.name
      subnet_id   = subnet.id
      subnet_cidr = subnet.address_prefixes
  }]
}

output "vnet_cidr" {
  value       = azurerm_virtual_network.vnet.address_space
  description = "Address space of Vnet"
}

output "vnet_guid" {
  value       = azurerm_virtual_network.vnet.guid
  description = "Guid of Vnet"
}