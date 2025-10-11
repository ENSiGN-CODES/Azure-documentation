output "vnet_id" {
  value       = module.networking.vnet_id
  description = "ID of the virtual network"
}

output "vnet_name" {
  value       = module.networking.vnet_name
  description = "Name of the virtual network"
}

output "subnet_names" {
  value       = module.networking.subnet_names
  description = "Names of all subnets"
}

output "subnet_prefixes" {
  value       = module.networking.subnet_prefixes
  description = "CIDR prefixes of subnets"
}

output "vm_ids" {
  value       = module.compute.vm_ids
  description = "IDs of all VMs"
}

output "vm_hostnames" {
  value       = module.compute.vm_hostnames
  description = "Hostnames of all VMs"
}

output "availability_set_id" {
  value       = module.compute.availability_set_id
  description = "VM availability set ID"
}
