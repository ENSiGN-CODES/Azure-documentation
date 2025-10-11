output "application_gateway_id" {
  description = "ID of the Application Gateway"
  value       = azurerm_application_gateway.appgw.id
}

output "application_gateway_name" {
  description = "Name of the Application Gateway"
  value       = azurerm_application_gateway.appgw.name
}

output "frontend_ip_configuration_id" {
  description = "Frontend IP configuration ID"
  value       = azurerm_application_gateway.appgw.frontend_ip_configuration[0].id
}
