variable "name" {
  description = "Name of the Application Gateway"
  type        = string
}

variable "resource_group_name" {
  description = "Resource Group Name"
  type        = string
}

variable "location" {
  description = "Azure Location"
  type        = string
}

variable "sku_name" {
  description = "SKU Name of Application Gateway (Standard_v2, WAF_v2)"
  type        = string
  default     = "Standard_v2"
}

variable "sku_tier" {
  description = "SKU Tier of the Application Gateway"
  type        = string
  default     = "Standard_v2"
}

variable "capacity" {
  description = "Gateway capacity (instance count)"
  type        = number
  default     = 2
}

variable "subnet_id" {
  description = "Subnet ID where Application Gateway will be placed"
  type        = string
}

variable "frontend_port" {
  description = "Frontend Port number"
  type        = number
  default     = 80
}

variable "public_ip_address_id" {
  description = "Public IP Address resource ID for frontend IP"
  type        = string
}

variable "backend_fqdns" {
  description = "List of backend FQDNs"
  type        = list(string)
  default     = []
}

variable "backend_port" {
  description = "Backend port"
  type        = number
  default     = 80
}

variable "backend_protocol" {
  description = "Protocol for backend traffic"
  type        = string
  default     = "Http"
}

variable "listener_protocol" {
  description = "Protocol for listener"
  type        = string
  default     = "Http"
}

variable "tags" {
  description = "Tags for resource"
  type        = map(string)
  default     = {}
}
