terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

# Modules Concepts of Terraform

module "rg" {
  source = "./rg"
  rg_name = var.rg_name
  region = var.region
}

module "vnet" {
  source = "./vnet"
  vnet_name = var.vnet_name
  vnet_cidr = var.vnet_cidr
  rg_name = module.rg.rg_name
  region = module.rg.region
  
}

module "subnet" {
   source = "./subnet"
   Websub_name = var.Websub_name
   Websub_cidr = var.Websub_cidr
   dbsub_name = var.dbsub_name
   dbsub_cidr = var.dbsub_cidr
   rg_name = module.rg.rg_name
   vnet_name = module.vnet.vnet_name
}
















