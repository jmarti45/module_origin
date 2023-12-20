resource "azurerm_resource_group" "comun" {
  name     = "rg-${var.Enterprise1}-${var.Environment}-${var.Project1}-03"
  location = var.Location.name
  #tags     = var.binding_tags
}
