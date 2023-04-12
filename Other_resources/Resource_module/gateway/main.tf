data "azurerm_subnet" "dmz_subnet" {
  name                 = "snet-dmz"
  virtual_network_name = "vnet-dmz"
  resource_group_name  = "rg-dev-nw-eus-01"
}
data "azurerm_public_ip" "public_ip" {
  name                = "project_public_ip"
  resource_group_name = "rg-dev-resource-eus"
}
resource "azurerm_application_gateway" "gateway" {
  name               = var.gateway_name
  location            = var.location
  resource_group_name = var.resource_group_name

  sku {
    name     = "Standard_v2" # or "WAF_v2"
    tier     = var.tier#"Standard_v2"  or "WAF_v2"
    capacity = var.gateway_instances
  }

  gateway_ip_configuration {
    name      = "gateway-ip"
    subnet_id = data.azurerm_subnet.dmz_subnet.id
  }

 frontend_port {
    name = "my-frontend-port"
    port = 80
  }

  frontend_ip_configuration {
    name      = "frontend-ip"
    public_ip_address_id = data.azurerm_public_ip.public_ip.id
  }
    http_listener {
    name                           = "http-listener"
    frontend_ip_configuration_name = "frontend-ip"
    frontend_port_name = var.frontend_port_name
    protocol                       = "Http"
  }
  backend_address_pool {
    name = "backend-pool"
  }

  backend_http_settings {
    name                  = "backend-http-settings"
    cookie_based_affinity = "Disabled"
    port                  = 80
    protocol              = "Http"
  }

 request_routing_rule {
  name                       = "routing-rule"
  rule_type                  = "Basic"
  http_listener_name         = "http-listener"
  backend_address_pool_name  = "backend-pool"
  backend_http_settings_name = "backend-http-settings"
  priority                   = 1
}

}

