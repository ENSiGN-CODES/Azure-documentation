variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The Azure region for the VNet"
  type        = string
}

variable "vnet_name" {
  description = "The name of the virtual network"
  type        = string
}

variable "address_space" {
  description = "The address space for the virtual network (CIDR, eg 10.22.0.0/16)"
  type        = string
}

variable "subnet_prefixes" {
  description = "A list of address prefixes for the subnets"
  type        = list(string)
}

variable "subnet_names" {
  description = "A list of names for the subnets"
  type        = list(string)
}
variable "name" {
  description = "Name of the Network Security Group"
  type        = string
}

variable "location" {
  description = "Azure location where NSG will be created"
  type        = string
}

variable "rgname" {
  description = "Name of the resource group"
  type        = string
}