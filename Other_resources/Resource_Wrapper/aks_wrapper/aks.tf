module "aks_wrapper" {
  source = "D:/Resource_module/aks"
  resource_group_name = var.resource_group_name
  location = var.location
  aks_cluster_name = var.aks_cluster_name
  #aks_node_count = 3
  client_id = var.client_id
  client_secret = var.client_secret
  dns_prefix = var.dns_prefix
  vm_size = var.vm_size
  node_resource_group = var.node_resource_group
  service_cidr = var.service_cidr
  dns_service_ip = var.dns_service_ip
  docker_bridge_cidr = var.docker_bridge_cidr
  #ssh_public_key = var.ssh_public_key
  # role_based_access_control = var.role_based_access_control
}



