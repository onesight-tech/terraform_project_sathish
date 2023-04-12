module "gateway_wrapper" {
  source = "D:/Resource_module/gateway"
location = var.location
resource_group_name     = var.resource_group_name
gateway_instances       = var.gateway_instances
gateway_name = var.gateway_name
tier = var.tier
frontend_port_name = var.frontend_port_name
}