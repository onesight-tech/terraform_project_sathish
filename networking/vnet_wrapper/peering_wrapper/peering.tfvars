peering_name = "peering"
source_vnet_name = "vnet-app"
source_resource_group_name = "rg-dev-nw-eus-01"
target_vnet_name = "vnet-hub"
target_resource_group_name = "rg-dev-nw-eus-01"
 

vnet_modules = [      
    {            
        source_vnet_name = "vnet-app"            
        source_resource_group_name = "rg-dev-nw-eus-01"            
        target_vnet_name = "vnet-data"            
        target_resource_group_name = "rg-dev-nw-eus-01"      
        },      
        {            
            source_vnet_name = "vnet-data"            
            source_resource_group_name = "rg-dev-nw-eus-01"            
            target_vnet_name = "vnet-app"            
            target_resource_group_name = "rg-dev-nw-eus-01"      
            },
            {            
            source_vnet_name = "vnet-dmz"            
            source_resource_group_name = "rg-dev-nw-eus-01"            
            target_vnet_name = "vnet-hub"            
            target_resource_group_name = "rg-dev-nw-eus-01" 
            },
            {            
            source_vnet_name = "vnet-hub"            
            source_resource_group_name = "rg-dev-nw-eus-01"            
            target_vnet_name = "vnet-dmz"            
            target_resource_group_name = "rg-dev-nw-eus-01" 
            }
            ]
