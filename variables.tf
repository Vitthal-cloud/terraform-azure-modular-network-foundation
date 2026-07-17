variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  type        = string
}

variable "location" {
  description = "Azure region where resources will be deployed"
  type        = string
}

variable "vnet_name" {
  type = string
}

variable "address_space" {
  type = list(string)
}

variable "subnet_name" {
  description = "Name of the Azure Subnet"
  type        = string
}

variable "subnet_address_prefixes" {
  description = "Address prefixes for the Azure Subnet"
  type        = list(string)
}