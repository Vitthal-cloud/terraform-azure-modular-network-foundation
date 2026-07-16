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