variable "vm_name" {
  description = "Name of the Azure Virtual Machine"
  type        = string
}

variable "vm_size" {
  description = "Size of the Azure Virtual Machine"
  type        = string
}

variable "location" {
  description = "Azure region where the VM will be deployed"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  type        = string
}

variable "network_interface_id" {
  description = "ID of the Azure Network Interface to attach to the VM"
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