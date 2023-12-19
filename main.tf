terraform {
  backend "azurerm" {
    resource_group_name  = "TestJMDMODULE"
    storage_account_name = "testjmdmodule02"
    container_name       = "tfstates"
    #sas_token            = "$SAS_TOKEN"
    sas_token = "?sv=2022-11-02&ss=b&srt=sco&sp=rwdlactf&se=2024-02-01T21:55:07Z&st=2023-11-07T13:55:07Z&spr=https&sig=6yDxOkmCliag8NoUt44HzyE%2Bkl8lYPrUcr8n2g8fxRE%3D"
    key       = "enagasdiferentsubs2.tfstate"
  }

  /*
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.7.0"
    }
  }
*/
}



/*
# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = true


    }
  }
}

*/


provider "azurerm" {
  features {}
}

provider "azurerm" {
  subscription_id = "454b896d-f798-4a54-a962-13de05c1e511"
  features {}
  alias = "subscription_2"
}

resource "azurerm_resource_group" "comun" {
  name     = "rg-${var.Enterprise1}-${var.Environment}-${var.Project1}-03"
  location = var.Location.name
  tags     = var.binding_tags
  provider = azurerm.subscription_2
}