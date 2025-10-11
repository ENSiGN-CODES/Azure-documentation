variable "resource_group_name" {
  type = string
}

variable "vnet_name" {
  type = string
}

variable "address_space" {
  type = list(string)
}

variable "subnet_prefixes" {
  type = list(string)
}

variable "subnet_names" {
  type = list(string)
}

variable "location" {
  type = string
}

variable "vm_os_simple" {
  type = string
}

variable "admin_username" {
  type = string
}

variable "admin_password" {
  type      = string
  sensitive = true
}

variable "network_interface_id" {
  type = string
  default = ""
}

variable "public_ip_id" {
  type = string
  default = ""
}

variable "os_disk_type" {
  type    = string
  default = "Standard_LRS"
}

variable "publisher" {
  type    = string
  default = "Canonical"
}

variable "offer" {
  type    = string
  default = "UbuntuServer"
}

variable "sku" {
  type    = string
  default = "18.04-LTS"
}

variable "vm_size" {
  type    = string
  default = "Standard_DS1_v2"
}

variable "nsg_name" {
  type = string
  default = ""
}

variable "appgw_name" {
  type = string
  default = ""
}

variable "sku_name" {
  type    = string
  default = "Standard_v2"
}

variable "sku_tier" {
  type    = string
  default = "Standard_v2"
}

variable "capacity" {
  type    = number
  default = 2
}

variable "subnet_id" {
  type = string
  default = ""
}

variable "frontend_port" {
  type    = number
  default = 80
}

variable "appgw_public_ip_id" {
  type = string
  default = ""
}

variable "backend_fqdns" {
  type    = list(string)
  default = []
}

variable "backend_port" {
  type    = number
  default = 80
}

variable "backend_protocol" {
  type    = string
  default = "Http"
}

variable "listener_protocol" {
  type    = string
  default = "Http"
}

variable "image_name" {
  type    = string
  default = "nginx:latest"
}

variable "container_name" {
  type    = string
  default = "nginx_container"
}

variable "internal_port" {
  type    = number
  default = 80
}

variable "external_port" {
  type    = number
  default = 8080
}

variable "environment_variables" {
  type    = map(string)
  default = {}
}

variable "common_name" {
  type = string
}

variable "organization" {
  type    = string
  default = "MyOrg"
}

variable "validity_period_hours" {
  type    = number
  default = 8760
}
