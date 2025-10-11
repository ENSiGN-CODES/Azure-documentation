resource "azurerm_application_gateway" "appgw" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location

  sku {
    name     = var.sku_name
    tier     = var.sku_tier
    capacity = var.capacity
  }

  gateway_ip_configuration {
    name      = "gateway-ip-configuration"
    subnet_id = var.subnet_id
  }

  frontend_port {
    name = "frontend-port"
    port = var.frontend_port
  }

  frontend_ip_configuration {
    name                 = "frontend-ip-configuration"
    public_ip_address_id = var.public_ip_address_id
  }

  backend_address_pool {
    name = "backend-pool"
    fqdns = var.backend_fqdns
  }

  backend_http_settings {
    name                  = "http-settings"
    cookie_based_affinity = "Disabled"
    port                  = var.backend_port
    protocol              = var.backend_protocol
    pick_host_name_from_backend_address = false
  }

  http_listener {
    name                           = "http-listener"
    frontend_ip_configuration_name = "frontend-ip-configuration"
    frontend_port_name             = "frontend-port"
    protocol                      = var.listener_protocol
  }

  request_routing_rule {
    name               = "routing-rule"
    rule_type          = "Basic"
    http_listener_name = "http-listener"
    backend_address_pool_name = "backend-pool"
    backend_http_settings_name = "http-settings"
  }

  tags = var.tags
}
