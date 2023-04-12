data "azurerm_subnet" "hub_subnet" {
  name                 = "snet-hub"
  virtual_network_name = "vnet-hub"
  resource_group_name  = "rg-dev-nw-eus-01"
}
resource "azurerm_public_ip" "public_ip" {
  name                = "project_public_ip"
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = var.sku
  allocation_method = var.allocation_method 
}
resource "azurerm_network_interface" "nic" {
  name                = var.nic_name
  location            = var.location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = "ipconfig1"
    subnet_id                     = data.azurerm_subnet.hub_subnet.id
    #public_ip_address_id          = azurerm_public_ip.public_ip.id
    private_ip_address_allocation = var.private_ip_address_allocation
  }
}