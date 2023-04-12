variable "vnet_modules" {
  type    = list
}
variable "peering_name" {
  type = string
}

variable "source_resource_group_name" {
  type = string
}

variable "source_vnet_name" {
  type = string
}

variable "target_vnet_name" {
  type = string
}

variable "target_resource_group_name" {
  type = string
}
