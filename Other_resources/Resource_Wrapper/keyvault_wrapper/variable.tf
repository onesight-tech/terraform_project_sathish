variable "key_vault_name" {
  type = string
}

variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "enabled_for_disk_encryption" {
  type = bool
}

variable "tenant_id" {
  type = string
}

variable "sku" {
  type = string
}

variable "purge_protection_enabled" {
  type = bool
}
variable "object_id" {
  type = string
}