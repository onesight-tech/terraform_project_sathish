variable "resource_group_name" {
  description = "Name of the resource group where the ACR will be created."
}

variable "acr_name" {
  description = "Name of the ACR."
}

variable "location" {
  description = "Location of the ACR."
}
variable "sku" {
  type = string
}
variable "admin_enabled" {
  type = bool
}