# Create a resource group
resource "azurerm_resource_group" "hitech_rg" {
  name     = var.rg_name
  location = var.region
}

# Getting the output
output "rg_name" {
  value = azurerm_resource_group.hitech_rg.name
}

output "region" {
  value = azurerm_resource_group.hitech_rg.location
}

