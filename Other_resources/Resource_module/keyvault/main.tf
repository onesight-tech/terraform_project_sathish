data "azurerm_subnet" "hub_subnet" {
  name                 = "snet-hub"
  virtual_network_name = "vnet-hub"
  resource_group_name  = "rg-dev-nw-eus-01"
}
resource "azurerm_key_vault" "valut" {
  name                        = var.key_vault_name
  location                    = var.location
  resource_group_name         = var.resource_group_name
  enabled_for_disk_encryption = var.enabled_for_disk_encryption
  tenant_id                   = var.tenant_id
  sku_name                    = var.sku
  purge_protection_enabled    = var.purge_protection_enabled
#  soft_delete_enabled         = true
#  soft_delete_retention_days  = 7

  network_acls {
    default_action             = "Deny"
    bypass                     = "AzureServices"
    ip_rules                   = []
    virtual_network_subnet_ids = [data.azurerm_subnet.hub_subnet.id]
  }
 access_policy {
    tenant_id = var.tenant_id
    object_id = var.object_id

    key_permissions = [
      "Backup", 
      "Create", 
      "Decrypt",
      "Delete", 
      "Encrypt",
      "Get", 
      "Import", 
      "List", 
      "Purge", 
      "Restore", 
      "Sign", 
      "Update", 
      "Verify"
    ]

    secret_permissions = [
      "Backup",
      "Delete",
      "Get",
      "List",
      "Purge",
      "Recover",
      "Restore",
      "Set"
    ]
 }
}
resource "azurerm_private_endpoint" "keyvault_endpoint" {
  name                = "keyvault-endpoint"
  location            = var.location
  resource_group_name = var.resource_group_name
  subnet_id           = data.azurerm_subnet.hub_subnet.id

  private_service_connection {
    name                           = "keyvault-connection"
    private_connection_resource_id = azurerm_key_vault.valut.id
    is_manual_connection           = false
    subresource_names              = ["vault"]
  }
}

