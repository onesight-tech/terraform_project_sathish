module "keyvault_wrapper" {
  source = "D:/Resource_module/keyvault"
key_vault_name = var.key_vault_name
location = var.location
resource_group_name = var.resource_group_name
enabled_for_disk_encryption = var.enabled_for_disk_encryption
tenant_id = var.tenant_id
sku = var.sku
purge_protection_enabled = var.purge_protection_enabled
object_id = var.object_id
}