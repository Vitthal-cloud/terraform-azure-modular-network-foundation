output "nsg_name" {
  description = "The name of the Azure Network Security Group"
  value       = azurerm_network_security_group.nsg.name
}

output "nsg_id" {
  description = "The ID of the Azure Network Security Group"
  value       = azurerm_network_security_group.nsg.id
}