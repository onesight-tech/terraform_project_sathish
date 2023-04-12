module "vnets_all" {
    source = "D:/vnet_Modules/vnet"

    count = length(var.nw_vnets)
    
    vnet_name               =   lookup(var.nw_vnets[count.index], "name")
    vnet_address_space      =   lookup(var.nw_vnets[count.index], "address_prefix")
    location                =   var.location
    resource_group_name     =   lookup(var.nw_vnets[count.index], "resource_group_name")
    tags                    =   var.tags

    subnet_list             =   lookup(var.nw_vnets[count.index], "subnets_list")
}



# ####### storage account => store the terraform state file

# terraform {
#   backend "azurerm" {
#     storage_account_name = "your_storage_account_name"
#     container_name       = "your_container_name"
#     key                  = "your_key_name"
#   }
# }
