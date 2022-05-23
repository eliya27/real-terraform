terraform {
  required_providers {
     azurerm = {
        source = "hashicorp/azurerm"
        version = "=2.99.0"
     }
     azuread = {
        
     }
  }
}

provider "azurerm" {
  client_id = var.client_id
  client_secret = var.client_secret
  subscription_id = var.subscription_id
  tenant_id =  var.tenant_id

  features {}
}

provider "azuread" {
   client_id = var.client_id
   client_secret = var.client_secret
   tenant_id =  var.tenant_id
}

#-----resource-group module-----



module "aks" {
   source = "./az-modules/aks"
}

