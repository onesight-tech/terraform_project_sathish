module "peering" {
  source = "D:/vnet_Modules/peering"
  vnet_modules = var.vnet_modules 
  count                      = length(var.vnet_modules)
  peering_name               = "${var.peering_name}-${count.index}"
  source_resource_group_name = var.vnet_modules[count.index].source_resource_group_name
  source_vnet_name           = var.vnet_modules[count.index].source_vnet_name
  target_resource_group_name = var.vnet_modules[count.index].target_resource_group_name
  target_vnet_name           = var.vnet_modules[count.index].target_vnet_name
}
