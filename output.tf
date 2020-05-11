output "app_service_name" {
  value = "${azurerm_app_service.example.name}"
  description = "APp service name"
}

output "app_service_default_hostname" {
  value = "https://${azurerm_app_service.example.default_site_hostname}"
  description = "Default URL"
}