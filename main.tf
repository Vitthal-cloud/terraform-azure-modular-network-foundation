module "resource_group" {
  source = "./modules/resource-group"

  resource_group_name = var.resource_group_name
  location            = var.location
}

module "virtual_network" {
  source = "./modules/virtual-network"

  vnet_name           = var.vnet_name
  address_space       = var.address_space
  location            = module.resource_group.resource_group_location
  resource_group_name = module.resource_group.resource_group_name
}

module "subnet" {
  source = "./modules/subnet"

  subnet_name             = var.subnet_name
  subnet_address_prefixes = var.subnet_address_prefixes
  resource_group_name     = module.resource_group.resource_group_name
  vnet_name               = module.virtual_network.vnet_name
}

module "network_security_group" {
  source = "./modules/network-security-group"

  nsg_name            = var.nsg_name
  location            = module.resource_group.resource_group_location
  resource_group_name = module.resource_group.resource_group_name
}

module "subnet_nsg_association" {
  source = "./modules/subnet-nsg-association"

  subnet_id = module.subnet.subnet_id
  nsg_id    = module.network_security_group.nsg_id
}

module "public_ip" {
  source = "./modules/public-ip"

  public_ip_name      = var.public_ip_name
  resource_group_name = module.resource_group.resource_group_name
  location            = module.resource_group.resource_group_location
}


module "network_interface" {
  source = "./modules/network-interface-card"

  network_interface_name = var.network_interface_name
  resource_group_name    = module.resource_group.resource_group_name
  location               = module.resource_group.resource_group_location

  subnet_id    = module.subnet.subnet_id
  public_ip_id = module.public_ip.public_ip_id

  private_ip_allocation = var.private_ip_allocation
}

module "vm" {
  source = "./modules/VM"

  vm_name             = var.vm_name
  vm_size             = var.vm_size
  resource_group_name = module.resource_group.resource_group_name
  location            = module.resource_group.resource_group_location

  network_interface_id = module.network_interface.nic_id

  admin_username = var.admin_username
  admin_password = var.admin_password

  os_disk_name = var.os_disk_name
}