variable "subnet_name" {
  description = "Subnet Name"
  type        = string
}

variable "subnet_address_prefixes" {
  description = "List of subnet address prefixes"
  type        = list(string)
}

variable "resource_group_name" {
  description = "Resource Group Name"
  type        = string
}

variable "vnet_name" {
  description = "Virtual Network Name"
  type        = string
}

