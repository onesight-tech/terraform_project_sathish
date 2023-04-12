variable "location" {
  type    = string
}

variable "resource_group_name" {
  type    = string
}
variable "gateway_instances" {
  type    = number
  #default = 2
}
variable "gateway_name" {
  type = string
}
variable "tier" {
  type = string
}
variable "frontend_port_name" {
  type = string
}
