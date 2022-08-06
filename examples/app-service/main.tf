provider "azurerm" {
features {}
}

data "azurerm_application_insights" "main" {
  name                = "af6a4065"
  resource_group_name = "weu-test-rg"
}

module "app-service" {
  source  = "spy86/app-service-linux-containers/azure"
  version = "1.0.3"
  resource_group_name = "weu-test-rg"
  app_service_plan_kind = "Linux"
  app_service_plan_reserved = "true"
  app_service_plan_size = "S1"
  app_service_plan_tier = "Basic"
  app_service_plan_name = "af6a4065"
  app_service_name = "af6a4065"
  app_service_always_on = false
  app_service_app_command_line = ""
  app_service_ftps_state = "FtpsOnly"
  app_service_http2_enabled = false
  app_service_linux_fx_version = "DOCKER|mcr.microsoft.com/appsvc/staticsite:latest"
  app_service_min_tls_version = "1.2"
  app_service_use_32_bit_worker_process = false
  app_service_websockets_enabled = false
  environment = "dev"
  region = "weu"
  resource_group_location = "West Europe"
  ip_restrictions = [
    {
      name = "IP"
      cidr_ip = "10.0.0.1/32"
    },
    {
      name = "IP2"
      cidr_ip = "10.0.1.0/32"
    }
  ]
  connection_strings = [
    {
      name  = "NAME01"
      type  = "SQLServer"
      value = "CONNECTION_STRING_VALUE"
    },
    {
      name  = "NAME02"
      type  = "SQLServer"
      value = "CONNECTION_STRING_VALUE"
    }
  ]
  app_service_settings = {
      key1 = "value1"
      key2 = "value2"
      key3 = "value3"
      APPINSIGHTS_INSTRUMENTATIONKEY = "${data.azurerm_application_insights.main.instrumentation_key}"
  }
  default_tags = {
      Administrator = "Someone"
      Department = "IT"
      CostCentre = "ABC123"
      ContactPerson = "Someone@example.com"
      ManagedByTerraform = "True"
}
}