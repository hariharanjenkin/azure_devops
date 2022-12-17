variable "rg_name"{
	default = "hitech-01-rg"
}

variable "region" {
	default = "East US"
}

variable "vnet_name" {
	default = "hitech-vent-002"
}

variable "vnet_cidr" {
	default = ["20.1.0.0/16"]
}

variable "Websub_name" {
	default = "hitech-web-sub01"
}

variable "Websub_cidr" {
	default = ["20.1.1.0/24"]
}

variable "dbsub_name" {
	default = "hitech-db-sub02"
}

variable "dbsub_cidr" {
	default = ["20.1.2.0/24"]
}
