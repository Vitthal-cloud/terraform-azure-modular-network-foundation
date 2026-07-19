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

variable "nsg_name" {
  description = "Name of the Azure Network Security Group"
  type        = string
}

variable "public_ip_name" {
  description = "Name of the Azure Public IP"
  type        = string
}

variable "network_interface_name" {
  type = string
}

variable "private_ip_allocation" {
  type    = string
  default = "Dynamic"
}

variable "vm_name" {
  description = "Name of the Azure Virtual Machine"
  type        = string
}

variable "vm_size" {
  description = "Size of the Azure Virtual Machine"
  type        = string
}

variable "admin_username" {
  description = "Admin username for the Azure Virtual Machine"
  type        = string
}

variable "admin_password" {
  description = "Admin password for the Azure Virtual Machine"
  type        = string
  sensitive   = true
}

variable "os_disk_name" {
  description = "Name of the OS disk for the Azure Virtual Machine"
  type        = string
}