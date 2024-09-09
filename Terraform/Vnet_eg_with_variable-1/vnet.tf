# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
#terraform {
#  required_providers {
#    azurerm = {
#      source  = "hashicorp/azurerm"
#      version = "=3.0.0"
#    }
#  }
#}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}


# Terraform Resource Creation starts
# Create a resource group
resource "azurerm_resource_group" "hitech_rg" {
  name     = var.rg_name
  location = var.region
}

# Vnet creation
resource "azurerm_virtual_network" "hitech_vnet" {
  name                = var.vnet_name
  resource_group_name = azurerm_resource_group.hitech_rg.name
  location            = azurerm_resource_group.hitech_rg.location
  address_space       = var.vnet_cidr
}

# Web Subnet Creation
resource "azurerm_subnet" "hitech_sub01" {
  name                 = "web-sub01"
  resource_group_name  = azurerm_resource_group.hitech_rg.name
  virtual_network_name = azurerm_virtual_network.hitech_vnet.name
  address_prefixes     = var.Websub_cidr
}

# DB Subnet Creation
resource "azurerm_subnet" "hitech_sub02" {
  name                 = "db-sub02"
  resource_group_name  = azurerm_resource_group.hitech_rg.name
  virtual_network_name = azurerm_virtual_network.hitech_vnet.name
  address_prefixes     = var.dbsub_cidr
}
