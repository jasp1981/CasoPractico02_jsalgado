# declaración del provider

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.1"
    }
  }
}

# Indicar credenciales de Azure
provider "azurerm" {
  features {}
  subscription_id =  # ID de suscripción
  client_id       =  # app ID
  client_secret   =  # password
  tenant_id       =  # tenant
}

# Resource Group

resource "azurerm_resource_group" "rg" {
    name     =  "kubernetes_rg"
    location = var.location

    tags = {
        environment = "CP2"
    }

}

# Storage account


resource "azurerm_storage_account" "storageAct" {
    name                     = "storageactjs" 
    resource_group_name      = azurerm_resource_group.rg.name
    location                 = azurerm_resource_group.rg.location
    account_tier             = "Standard"
    account_replication_type = "LRS"

    tags = {
        environment = "CP2"
    }

}
