terraform {
     backend "azurerm" {
    resource_group_name  = "infra_rg"          # Can be passed via `-backend-config=`"resource_group_name=<resource group name>"` in the `init` command.
    storage_account_name = "stg0007"       # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "cnt007"         # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "prod.terraform.tfstate" # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
  
required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "4.35.0"
    }
  }
}

provider "azurerm" {
    features {}
    subscription_id = "b2744a0d-e7f7-4cea-af52-689c2e4a2c69"
      
    }