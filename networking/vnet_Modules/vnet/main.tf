resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  address_space       = var.vnet_address_space
  location            = var.location
  resource_group_name = var.resource_group_name
  tags                = var.tags
}

resource "azurerm_subnet" "vnetsubnet" {
  count = length(var.subnet_list)

  name                                           = lookup(var.subnet_list[count.index], "name")
  resource_group_name                            = var.resource_group_name
  virtual_network_name                           = azurerm_virtual_network.vnet.name
  address_prefixes                               = [lookup(var.subnet_list[count.index], "address_prefix")]
  service_endpoints                              = lookup(var.subnet_list[count.index], "service_endpoints")
}