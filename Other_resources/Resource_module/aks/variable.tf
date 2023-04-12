variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}
variable "aks_cluster_name" {
    type = string
}

variable "node_resource_group" {
  type = object({
    name = string
  })
}

variable "dns_prefix" {
  type = string
}

variable "vm_size" {
  type = string
}

variable "service_cidr" {
  type = string
}

variable "dns_service_ip" {
  type = string
}

variable "docker_bridge_cidr" {
  type = string
}

variable "client_id" {
  type = string
}

variable "client_secret" {
  type = string
}
# variable "role_based_access_control" {
#   type = bool
# }
