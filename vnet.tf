resource "azurerm_virtual_network" "vnetcon1" {
  name                = "vnet-${var.Enterprise1}-${var.Environment}-${var.Location.code}-01"
  location            = var.Location.name
  resource_group_name = azurerm_resource_group.comun.name
  address_space       = [var.Address_space]
  #tags                = var.binding_tags
  #dns_servers         = ["11.0.0.4", "11.0.0.5"]
  provider = azurerm.pre
}

/*

resource "azurerm_subnet" "vgw" {
  name                 = "snet-${var.Enterprise1}-${var.Environment}-${var.Location.code}-01"
  resource_group_name  = azurerm_resource_group.comun.name
  virtual_network_name = azurerm_virtual_network.vnetcon1.name
  address_prefixes     = [var.Address_prefixes]
  provider             = azurerm.pre
}
*/