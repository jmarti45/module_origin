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


resource "azurerm_resource_group" "comun" {
  name     = "rg-${var.Enterprise1}-${var.Environment}-${var.Project1}-03"
  location = var.Location.name
  tags     = var.binding_tags
}
