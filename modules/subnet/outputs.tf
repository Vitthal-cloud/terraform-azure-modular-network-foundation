output "subnet_name" {
  description = "The name of the Azure Subnet"
  value       = azurerm_subnet.subnet.name
}

output "subnet_address_prefixes" {
  description = "The address prefixes of the Azure Subnet"
  value       = azurerm_subnet.subnet.address_prefixes
}

output "subnet_id" {
  description = "The ID of the Azure Subnet"
  value       = azurerm_subnet.subnet.id
}