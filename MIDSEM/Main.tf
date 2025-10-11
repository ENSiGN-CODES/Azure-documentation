provider "azurerm" {
  features {}
}

module "networking" {
  source                = "./MODULES/networking"
  resource_group_name   = var.resource_group_name
  vnet_name             = var.vnet_name
  address_space         = var.address_space
  subnet_prefixes       = var.subnet_prefixes
  subnet_names          = var.subnet_names
}

module "compute" {
  source                = "./MODULES/compute"
  resource_group_name   = var.resource_group_name
  location              = var.location
  vm_os_simple          = var.vm_os_simple
  admin_username        = var.admin_username
  admin_password        = var.admin_password
  vnet_subnet_id        = module.networking.subnet_ids[0]  
}

module "load_balancer" {
  source                = "./Module/Load Balancer"
  resource_group_name   = var.resource_group_name
  name                  = var.appgw_name
  location              = var.location
  sku_name              = var.sku_name
  sku_tier              = var.sku_tier
  capacity              = var.capacity
  subnet_id             = var.subnet_id
  frontend_port         = var.frontend_port
  public_ip_address_id  = var.appgw_public_ip_id
  backend_fqdns         = var.backend_fqdns
  backend_port          = var.backend_port
  backend_protocol      = var.backend_protocol
  listener_protocol     = var.listener_protocol
}

module "nginx_app" {
  source                = "./Module/nginx_app"
  image_name            = var.image_name
  container_name        = var.container_name
  internal_port         = var.internal_port
  external_port         = var.external_port
  environment_variables = var.environment_variables
}

module "ssl_certificate" {
  source                = "./Module/SSL certificate"
  common_name           = var.common_name
  organization          = var.organization
  validity_period_hours = var.validity_period_hours
}
