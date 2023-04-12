terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.48.0"
    }
  }
    backend "azurerm" {
      resource_group_name  = "rg-dev-nw-eus-01"
      storage_account_name = "tffiles"
      container_name       = "terraformproject"
      key                  = "peering.tfstate"
  }
}

provider "azurerm" {
  features {}

  subscription_id = "9111ac6a-7e88-4f94-82b3-fd50d8d4c99b"
  client_id = "7a18747e-99a0-4345-9d79-30fa27eaf05a"
  client_secret = "C-58Q~tKOYBfZ8tHcxfSU0THGN.nRMZh.Iqnfbtk"
  tenant_id = "7682543b-237f-4d3a-8a9e-3fedfc6b5942"
}