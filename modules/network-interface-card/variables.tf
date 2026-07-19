variable "network_interface_name" {
  description = "Name of the Azure Network Interface"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  type        = string
}

variable "location" {
  description = "Azure region where resources will be deployed"
  type        = string
}

variable "subnet_id" {
  description = "The ID of the Azure Subnet"
  type        = string
}

variable "public_ip_id" {
  description = "The ID of the Azure Public IP"
  type        = string
  default     = null
}

variable "private_ip_allocation" {
  description = "The allocation method for the private IP address (Dynamic or Static)"
  type        = string
  default     = "Dynamic"
}

variable "accelerated_networking" {
  description = "Boolean flag to enable or disable accelerated networking"
  type        = bool
  default     = false
}

variable "ip_configuration_name" {
  description = "Name of the IP configuration for the network interface"
  type        = string
  default     = "ipconfig1"
}