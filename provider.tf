terraform {
   required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.7.0"
    }
  }
}
/*

provider "azurerm" {
  alias           = "dev"
  subscription_id = var.dev_sub_id
  features {}
}

provider "azurerm" {
  alias           = "pre"
  subscription_id = var.pre_sub_id
  features {}
}
*/