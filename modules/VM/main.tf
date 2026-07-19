resource "azurerm_windows_virtual_machine" "vm" {
  name                = var.vm_name
  location            = var.location
  resource_group_name = var.resource_group_name
  size                = var.vm_size

  network_interface_ids = [
    var.network_interface_id
  ]

  admin_username = var.admin_username
  admin_password = var.admin_password

source_image_reference {
  publisher = "MicrosoftWindowsServer"
  offer     = "WindowsServer"
  sku        = "2022-datacenter-azure-edition"
  version    = "latest"
}

  os_disk {
    name                 = var.os_disk_name
    caching              = "ReadWrite"
    storage_account_type = "StandardSSD_LRS"
  }
}