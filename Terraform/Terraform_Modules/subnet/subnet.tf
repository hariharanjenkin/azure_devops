# Web Subnet Creation
resource "azurerm_subnet" "hitech_sub01" {
  name                 = var.Websub_name
  resource_group_name  = var.rg_name
  virtual_network_name = var.vnet_name
  address_prefixes     = var.Websub_cidr
}

# DB Subnet Creation
resource "azurerm_subnet" "hitech_sub02" {
  name                 = var.dbsub_name
  resource_group_name  = var.rg_name
  virtual_network_name = var.vnet_name
  address_prefixes     = var.dbsub_cidr
}