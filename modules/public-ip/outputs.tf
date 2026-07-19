output "public_ip_id" {
  description = "The Azure Public IP resource ID"
  value       = azurerm_public_ip.public_ip.id
}

output "public_ip_name" {
  description = "The Azure Public IP name"
  value       = azurerm_public_ip.public_ip.name
}