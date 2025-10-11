output "vnet_id" {
  value       = azurerm_virtual_network.vnet.id
  description = "ID of the Virtual Network"
}

output "subnet_ids" {
  value       = [for s in azurerm_subnet.subnet : s.id]
  description = "IDs of all created subnets"
}
