output "resource_group_name" {
    description = "The name of the resource group"
  value = module.resource_group.resource_group_name
}

output "location" {
    description = "The location of the resource group"
  value = module.resource_group.resource_group_location
}

output "virtual_network_name" {
  value = module.virtual_network.virtual_network_name
}

output "virtual_network_id" {
  value = module.virtual_network.virtual_network_id
}