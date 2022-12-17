# Vnet creation
resource "azurerm_virtual_network" "hitech_vnet" {
  name                = var.vnet_name
  resource_group_name = var.rg_name
  location            = var.region
  address_space       = var.vnet_cidr
}

# Getting the output
output "vnet_name" {
  value = azurerm_virtual_network.hitech_vnet.name
}
