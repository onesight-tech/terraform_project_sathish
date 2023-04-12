location = "eastus"
resource_group_name = "rg-dev-resource-eus"
node_resource_group = {
  name = "node-rg-aks"
}
dns_prefix = "project-cluster"
aks_cluster_name = "project-cluster"
vm_size = "Standard_DS2_v2"

service_cidr = "10.0.0.0/16"
dns_service_ip = "10.0.0.10"
docker_bridge_cidr = "172.17.0.1/16"

client_id = "7a18747e-99a0-4345-9d79-30fa27eaf05a"
client_secret = "C-58Q~tKOYBfZ8tHcxfSU0THGN.nRMZh.Iqnfbtk"
#ssh_public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCrRr46teq+DqIDXPTCg++N0zzXYp9uA+lre8aDNwPfPi/MPaWdufS3JDxhEXpOp+ht5LK1+BRCurCPUHGKTTZRkKEaVtgkj28NhWfTUnxqMJ3gNtjuXowYCjLG5tqqLOtQhY1T3uf8O5feEHzhFldxOSR8dzZ66E2jhSWv+BRSmhHdmroADBQOJDXLmh/9nKxIhISik87SeDCa1DQe9VCnBzS3DY0aIhp26gndcS7TL/BG1CcWPDdxOLisLpGHGimfc91UTJE2AfjabA3jUOOApKKW/IsVszDZ+xkrzv5wV8Xdh4vFjYuADHW14tt/RDOfFr2PyIc6SeXB+fkN//2XY0tzocr78NLjGICbp6w8gsIzOdAUFEpNCkPuLOXkLIPdly1r/GBlIgGMA0eKswUAvj1L5CiXobs8rFl1r76qmXOKdCIp6r/MwdWr4CRKwcuY6FhPpIkLvnWeEFvidu7952s14MBYiArUQNJNYpu8Z4fFbZ0zRl5YrLKc2lmWj3s= onesi@LAPTOP-KFC0E354"
# role_based_access_control = true
