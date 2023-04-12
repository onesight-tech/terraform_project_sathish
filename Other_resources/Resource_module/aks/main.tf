data "azurerm_subnet" "app_subnet" {
  name                 = "snet-app-aks" # subnet name
  virtual_network_name = "vnet-app"
  resource_group_name  = "rg-dev-nw-eus-01"
}
resource "azurerm_kubernetes_cluster" "aks_cluster" {
  name                = var.aks_cluster_name
  location            = var.location
  resource_group_name = var.resource_group_name
  node_resource_group = var.node_resource_group.name
  dns_prefix          = var.dns_prefix
   default_node_pool {
    name            = "nodepool"
    node_count      = 1
    vm_size         = var.vm_size 
    os_disk_size_gb = 30
    vnet_subnet_id   = data.azurerm_subnet.app_subnet.id
    }
network_profile {
    network_plugin = "azure"
    service_cidr   = var.service_cidr
    dns_service_ip = var.dns_service_ip
    docker_bridge_cidr = var.docker_bridge_cidr
  } 
role_based_access_control {
    enabled = true
  }
###############Not expected here###########
  # role_based_access_control {
  #   enabled = var.role_based_access_control
  # }
linux_profile {
    admin_username = "aksuser"
    ssh_key {
        key_data = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCrRr46teq+DqIDXPTCg++N0zzXYp9uA+lre8aDNwPfPi/MPaWdufS3JDxhEXpOp+ht5LK1+BRCurCPUHGKTTZRkKEaVtgkj28NhWfTUnxqMJ3gNtjuXowYCjLG5tqqLOtQhY1T3uf8O5feEHzhFldxOSR8dzZ66E2jhSWv+BRSmhHdmroADBQOJDXLmh/9nKxIhISik87SeDCa1DQe9VCnBzS3DY0aIhp26gndcS7TL/BG1CcWPDdxOLisLpGHGimfc91UTJE2AfjabA3jUOOApKKW/IsVszDZ+xkrzv5wV8Xdh4vFjYuADHW14tt/RDOfFr2PyIc6SeXB+fkN//2XY0tzocr78NLjGICbp6w8gsIzOdAUFEpNCkPuLOXkLIPdly1r/GBlIgGMA0eKswUAvj1L5CiXobs8rFl1r76qmXOKdCIp6r/MwdWr4CRKwcuY6FhPpIkLvnWeEFvidu7952s14MBYiArUQNJNYpu8Z4fFbZ0zRl5YrLKc2lmWj3s= onesi@LAPTOP-KFC0E354"
    }
        }
#addon profile
#  addon_profile {
#     azure_active_directory {
#       enabled = true
#     }
#   }        
    service_principal {
    client_id     = var.client_id
    client_secret = var.client_secret
    }
  depends_on = [azurerm_kubernetes_cluster.aks_cluster]
 # try to connect AAD Connection
#   aad_profile {
#     client_app_id     = "client-app-id"
#     server_app_id     = "server-app-id"
#     server_app_secret = "server-app-secret"
#     tenant_id         = "tenant-id"
#     managed           = true
#   }
#   aad_profile {
#     client_app_id     = "d32be961-2c2f-4434-a00f-57f9b3157c86"
#     server_app_id     = "4M68Q~AV8VwczlW-oWUC9~7VY_ZfGwgzcYm72cYK"
#     server_app_secret = "760c5476-85c6-485c-ae54-cbde820bfd60"
#     tenant_id         = "7682543b-237f-4d3a-8a9e-3fedfc6b5942"
#     managed           = true
#   }
}
########################################################################################
# addon_profile {
#     azure_active_directory {
#       enabled        = true
#       client_app_id  = "d32be961-2c2f-4434-a00f-57f9b3157c86"
#       server_app_id  = "4M68Q~AV8VwczlW-oWUC9~7VY_ZfGwgzcYm72cYK"
#       tenant_id      = "7682543b-237f-4d3a-8a9e-3fedfc6b5942"
#       server_app_secret = "760c5476-85c6-485c-ae54-cbde820bfd60"
#       admin_group_id = "7c0c57c6-fa1f-4db5-bdc6-3b99ba99e51f"
#     }
#   }
##########################################################################################
#   aad_profile {
#     managed = true
#     admin_group_object_ids = [
#       "object-id-of-azure-ad-group"
#     ]
#   }
# 
