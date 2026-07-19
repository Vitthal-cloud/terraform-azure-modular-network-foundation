output "vm_name" {
  description = "Name of the Azure Virtual Machine"
  value       = azurerm_windows_virtual_machine.vm.name
}

output "vm_id" {
  description = "ID of the Azure Virtual Machine"
  value       = azurerm_windows_virtual_machine.vm.id
}

