variable "rg_name"{
	default = "hitech-rg-01"
}

variable "region" {
	default = "East US"
}

variable "vnet_name" {
	default = "hitech-vnet-01"
}

variable "vnet_cidr" {
	default = ["10.1.0.0/16"]
}

variable "Websub_cidr" {
	default = ["10.1.1.0/24"]
}

variable "dbsub_cidr" {
	default = ["10.1.2.0/24"]
}