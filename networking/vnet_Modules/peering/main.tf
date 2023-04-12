resource "azurerm_virtual_network_peering" "vnet_peering" {
  name = var.peering_name
  resource_group_name = var.source_resource_group_name
  virtual_network_name = var.source_vnet_name
  remote_virtual_network_id = data.azurerm_virtual_network.target_vnet.id 
  allow_virtual_network_access = true
  allow_forwarded_traffic = true
  allow_gateway_transit = false
}

# Get the target virtual network ids
data "azurerm_virtual_network" "target_vnet" {
  name = var.target_vnet_name
  resource_group_name = var.target_resource_group_name
}

