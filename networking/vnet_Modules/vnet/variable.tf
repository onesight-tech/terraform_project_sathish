variable "vnet_name" {
  type        = string
  description = "(Required) The name of the virtual network. Changing this forces a new resource to be created."
}

variable "resource_group_name" {
  type        = string
  description = "(Required) The name of the resource group in which to create the virtual network."
}

variable "location" {
  type        = string
  description = "(Required) The location/region where the virtual network is created. Changing this forces a new resource to be created."
}

variable "vnet_address_space" {
  type        = list
  description = "(Required) The address space that is used the virtual network. You can supply more than one address space."
}

variable "tags" {
  type        = map
  description = "(Optional) A mapping of tags to assign to the resource."
  default     = {}
}

variable "subnet_list" {
  type        = list
  description = "(Optional) A list of subnets to be created. [{name, address_prefix}]"
  default     = []
}

variable "enforce_private_link_endpoint_network_policies" {
  type        = bool
  description = "(Optional) Enable or Disable network policies for the private link endpoint on the subnet. Default value is false. Conflicts with enforce_private_link_service_network_policies."
  default     = false
}

