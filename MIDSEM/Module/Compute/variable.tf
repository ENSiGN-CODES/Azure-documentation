variable "vm_name" {
  description = "Name of the Virtual Machine"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group for the VM"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "vm_size" {
  description = "Size of the VM"
  type        = string
  default     = "Standard_DS1_v2"
}

variable "admin_username" {
  description = "Admin username"
  type        = string
}

variable "admin_ssh_key" {
  description = "SSH public key for admin"
  type        = string
}

variable "network_interface_id" {
  description = "Network interface ID"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID to place NIC"
  type        = string
}

variable "public_ip_id" {
  description = "Public IP resource ID"
  type        = string
}

variable "os_disk_type" {
  description = "OS disk storage type"
  type        = string
  default     = "Standard_LRS"
}

variable "publisher" {
  description = "Image publisher"
  type        = string
  default     = "Canonical"
}

variable "offer" {
  description = "Image offer"
  type        = string
  default     = "UbuntuServer"
}

variable "sku" {
  description = "Image SKU"
  type        = string
  default     = "18.04-LTS"
}

variable "tags" {
  description = "Tags for resources"
  type        = map(string)
  default     = {}
}
