location            =   "East US"

tags                =   {
"environment" = "dev", "owner" = "1sight", "creator" = "sathishkumar.j@onesighttech.com","application" = "webapp"
}

nw_vnets    =   [
  {
    name = "vnet-app",
    address_prefix=["172.0.0.0/16"],
    resource_group_name="rg-dev-nw-eus-01", #<#rg-project> -run time pass (pipeline)
    subnets_list    =   [
        {"name" = "snet-app-aks",address_prefix="172.0.1.0/25",
                      enforce_private_link_endpoint_network_policies = false,
                      service_endpoints=[],
                      },
        # {"name" = "snet-infra-02",address_prefix="172.17.11.16/28",
        #               enforce_private_link_endpoint_network_policies = false,
        #               service_endpoints=[],
        #               },
        # {"name" = "snet-infra-03",address_prefix="172.17.11.32/28",
        #               enforce_private_link_endpoint_network_policies = false,
        #               service_endpoints=[],
        #               },
        # {"name" = "snet-infra-04",address_prefix="172.17.11.48/28",
        #               enforce_private_link_endpoint_network_policies = false,
        #               service_endpoints=[],
        #              }
    ]
  },
  {
    name = "vnet-data",
    address_prefix=["172.1.0.0/16"],
    resource_group_name="rg-dev-nw-eus-01",
    subnets_list    =   [
        {"name" = "snet-data",address_prefix="172.1.1.0/24",
                      enforce_private_link_endpoint_network_policies = false,
                      service_endpoints=[],
                      }
        # {"name" = "snet-app-02",address_prefix="172.17.12.128/27",
        #               enforce_private_link_endpoint_network_policies = false,
        #               service_endpoints=[],
        #               },
        # {"name" = "snet-app-03",address_prefix="172.17.12.160/27",
        #               enforce_private_link_endpoint_network_policies = false,
        #               service_endpoints=[],
        #               },
        # {"name" = "snet-app-04",address_prefix="172.17.12.192/26",
        #               enforce_private_link_endpoint_network_policies = false,
        #               service_endpoints=[],
                    #   }
    ]
  },
    {
    name = "vnet-dmz",
    address_prefix=["172.2.0.0/16"],
    resource_group_name="rg-dev-nw-eus-01",
    subnets_list    =   [
        {"name" = "snet-dmz",address_prefix="172.2.1.0/24",
                      enforce_private_link_endpoint_network_policies = false,
                      service_endpoints=[],
                      }
    ]
  },
  {
    name = "vnet-hub",
    address_prefix=["172.3.0.0/16"],
    resource_group_name="rg-dev-nw-eus-01",
    subnets_list    =   [
        {"name" = "snet-hub",address_prefix="172.3.1.0/24",
                      enforce_private_link_endpoint_network_policies = false,
                      service_endpoints=[],
                      }
    ]
  }, 
]

