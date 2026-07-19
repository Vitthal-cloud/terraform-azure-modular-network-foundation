variable "public_ip_name" {
  description = "The name of the Azure Public IP"
  type        = string
}

variable "resource_group_name" {
  description = "The Azure Resource Group name"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "allocation_method" {
  description = "Static or Dynamic allocation"
  type        = string
  default     = "Static"
}

variable "sku" {
  description = "Public IP SKU"
  type        = string
  default     = "Standard"
}