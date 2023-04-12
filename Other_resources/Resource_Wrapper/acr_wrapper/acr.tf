module "acr_wrapper" {
  source = "D:/Resource_module/acr"
resource_group_name = var.resource_group_name
acr_name = var.acr_name
location = var.location
sku = var.sku
admin_enabled =var.admin_enabled
}