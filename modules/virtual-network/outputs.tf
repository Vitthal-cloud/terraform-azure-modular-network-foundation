output "virtual_network_name" {
    description = "The name of the Azure Virtual Network"
  value = azurerm_virtual_network.vnet.name
}

output "virtual_network_address_space" {
    description = "The address space of the Azure Virtual Network"
  value = azurerm_virtual_network.vnet.address_space
}

output "virtual_network_id" {
    description = "The ID of the Azure Virtual Network"
  value = azurerm_virtual_network.vnet.id
}
