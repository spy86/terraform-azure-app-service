resource "azurerm_app_service_plan" "example" {
  name                = "${var.app_service_name}"
  location            = "${azurem_resource_group.rg.location}"
  resource_group_name = "${azurem_resource_group.rg.name}"
  kind                = "Linux"
  reserved            = true

  sku {
    tier = "${var.app_service_tier}"
    size = "${var.app_service_size_name}"
  }

  tags = {
      resource-owner = "${var.resource_owner}"
      environment = "${var.envirioment}"
  }
}

resource "azurerm_app_service" "example" {
  name                = "${var.app_service_name}"
  location            = "${azurerm_resource_group.main.location}"
  resource_group_name = "${azurerm_resource_group.main.name}"
  app_service_plan_id = "${azurerm_app_service_plan.main.id}"

  site_config {
    app_command_line = ""
    linux_fx_version = "docker-compose/wordpress.yml"
  }

  app_settings = {
    "WEBSITES_ENABLE_APP_SERVICE_STORAGE" = "false",
    "WEBSITE_PORT" = "8089"
  }

  tags = {
      resource-owner = "${var.resource_owner}"
      environment = "${var.envirioment}"
  }
}