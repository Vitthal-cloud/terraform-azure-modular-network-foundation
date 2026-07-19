output "nic_id" {
  description = "Azure Network Interface ID"
  value       = azurerm_network_interface.nic.id
}

output "nic_name" {
  description = "Azure Network Interface Name"
  value       = azurerm_network_interface.nic.name
}