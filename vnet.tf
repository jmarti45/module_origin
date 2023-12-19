resource "azurerm_virtual_network" "vnetcon1" {
  name                = "vnet-${var.Enterprise1}-${var.Environment}-${var.Location.code}-01"
  location            = var.Location.name
  resource_group_name = azurerm_resource_group.comun.name
  address_space       = [var.Address_space]
  tags                = var.binding_tags
  #dns_servers         = ["11.0.0.4", "11.0.0.5"]
}



resource "azurerm_subnet" "vgw" {
  name                 = "snet-${var.Enterprise1}-${var.Environment}-${var.Location.code}-01"
  resource_group_name  = azurerm_resource_group.comun.name
  virtual_network_name = azurerm_virtual_network.vnetcon1.name
  address_prefixes     = [var.Address_prefixes]
}

/*

resource "azurerm_subnet" "PEP" {
  name                 = "snet-${var.environment}-${var.location.code}-PEP-01"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnethub01.name
  address_prefixes     = ["10.249.46.96/28"]
}


resource "azurerm_public_ip" "publicip" {
  name                = "snet-${var.environment}-${var.location.code}-PIP-01"
  location            = var.location.name
  resource_group_name = azurerm_resource_group.rg.name

  allocation_method = "Dynamic"
}

resource "azurerm_virtual_network_gateway" "VNG" {
  name                = "VGW-${var.environment}-${var.location.code}-01"
  location            = var.location.name
  resource_group_name = azurerm_resource_group.rg.name

  type = "ExpressRoute"
  # vpn_type = "RouteBased"
  sku = "Standard"

  ip_configuration {
    public_ip_address_id          = azurerm_public_ip.publicip.id
    private_ip_address_allocation = "Dynamic"
    subnet_id                     = azurerm_subnet.VGW.id
  }
}

resource "azurerm_virtual_network_gateway_connection" "Connection01" {
  location                   = var.location.name
  name                       = "CON-${var.environment}-${var.location.code}-01"
  resource_group_name        = azurerm_resource_group.rg.name
  type                       = "ExpressRoute"
  virtual_network_gateway_id = azurerm_virtual_network_gateway.VNG.id
  express_route_circuit_id   = azurerm_express_route_circuit.er.id
}





# enable global peering between the two virtual network
resource "azurerm_virtual_network_peering" "peering" {
  count                        = length(var.location)
  name                         = "peering-Vnet01-to-Vnet02"
  resource_group_name          = var.rghub01
  virtual_network_name         = azurerm_virtual_network.vnethub01.name
  remote_virtual_network_id    = azurerm_virtual_network.vnetspoke01.id
  allow_virtual_network_access = true
  allow_forwarded_traffic      = true

  # `allow_gateway_transit` must be set to false for vnet Global Peering
  allow_gateway_transit = false
}
*/

