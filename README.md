<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.15 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 3.3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.3.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_app_service.main](https://registry.terraform.io/providers/hashicorp/azurerm/3.3.0/docs/resources/app_service) | resource |
| [azurerm_app_service_plan.main](https://registry.terraform.io/providers/hashicorp/azurerm/3.3.0/docs/resources/app_service_plan) | resource |
| [azurerm_app_service_slot.main](https://registry.terraform.io/providers/hashicorp/azurerm/3.3.0/docs/resources/app_service_slot) | resource |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/3.3.0/docs/data-sources/client_config) | data source |
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/3.3.0/docs/data-sources/resource_group) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app_service_always_on"></a> [app\_service\_always\_on](#input\_app\_service\_always\_on) | Should the app be loaded at all times? Defaults to false. | `bool` | `false` | no |
| <a name="input_app_service_app_command_line"></a> [app\_service\_app\_command\_line](#input\_app\_service\_app\_command\_line) | App command line to launch | `string` | `""` | no |
| <a name="input_app_service_ftps_state"></a> [app\_service\_ftps\_state](#input\_app\_service\_ftps\_state) | State of FTP / FTPS service for this App Service. Possible values include: AllAllowed, FtpsOnly and Disabled. | `string` | `"FtpsOnly"` | no |
| <a name="input_app_service_http2_enabled"></a> [app\_service\_http2\_enabled](#input\_app\_service\_http2\_enabled) | Is HTTP2 Enabled on this App Service? Defaults to false. | `bool` | `false` | no |
| <a name="input_app_service_https_only"></a> [app\_service\_https\_only](#input\_app\_service\_https\_only) | Can the App Service only be accessed via HTTPS? Defaults to false. | `bool` | `false` | no |
| <a name="input_app_service_linux_fx_version"></a> [app\_service\_linux\_fx\_version](#input\_app\_service\_linux\_fx\_version) | Linux App Framework and version for the App Service. | `string` | n/a | yes |
| <a name="input_app_service_min_tls_version"></a> [app\_service\_min\_tls\_version](#input\_app\_service\_min\_tls\_version) | The minimum supported TLS version for the app service. Possible values are 1.0, 1.1, and 1.2. Defaults to 1.2 for new app services. | `string` | `"1.2"` | no |
| <a name="input_app_service_name"></a> [app\_service\_name](#input\_app\_service\_name) | Name of APP | `string` | n/a | yes |
| <a name="input_app_service_plan_kind"></a> [app\_service\_plan\_kind](#input\_app\_service\_plan\_kind) | The kind of the App Service Plan to create. Possible values are Windows (also available as App), Linux, elastic (for Premium Consumption) and FunctionApp (for a Consumption Plan). Defaults to Windows. Changing this forces a new resource to be created. | `string` | `"Linux"` | no |
| <a name="input_app_service_plan_name"></a> [app\_service\_plan\_name](#input\_app\_service\_plan\_name) | Specifies the name of the App Service Plan component. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_app_service_plan_reserved"></a> [app\_service\_plan\_reserved](#input\_app\_service\_plan\_reserved) | Is this App Service Plan Reserved. Defaults to false. | `bool` | `true` | no |
| <a name="input_app_service_plan_size"></a> [app\_service\_plan\_size](#input\_app\_service\_plan\_size) | Size specifier of the resource SKU. Available sizes are F1(Free), D1(Shared), B1(Basic Small), B2(Basic Medium), B3(Basic Large), S1(Standard Small), P1V2(Premium V2 Small), P1V3(Premium V3 Small), P2V3(Premium V3 Medium), P3V3(Premium V3 Large), PC2 (Premium Container Small), PC3 (Premium Container Medium), PC4 (Premium Container Large), I1 (Isolated Small), I2 (Isolated Medium), I3 (Isolated Large), I1v2 (Isolated V2 Small), I2v2 (Isolated V2 Medium), I3v2 (Isolated V2 Large). Valid accepted values are: B1, B2, B3, D1, F1, FREE, I1, I1v2, I2, I2v2, I3, I3v2, P1V2, P1V3, P2V2, P2V3, P3V2, P3V3, PC2, PC3, PC4, S1, S2, S3, SHARED | `string` | `"S1"` | no |
| <a name="input_app_service_plan_tier"></a> [app\_service\_plan\_tier](#input\_app\_service\_plan\_tier) | Specifies the plan's pricing tier. Valid option are Free, Shared, Basic, Standard, PremiumV2 and Isolated. | `string` | `"Basic"` | no |
| <a name="input_app_service_settings"></a> [app\_service\_settings](#input\_app\_service\_settings) | A key-value pair of App Settings | `map` | `{}` | no |
| <a name="input_app_service_use_32_bit_worker_process"></a> [app\_service\_use\_32\_bit\_worker\_process](#input\_app\_service\_use\_32\_bit\_worker\_process) | Should the App Service run in 32 bit mode, rather than 64 bit mode? | `bool` | `false` | no |
| <a name="input_app_service_websockets_enabled"></a> [app\_service\_websockets\_enabled](#input\_app\_service\_websockets\_enabled) | Should WebSockets be enabled? | `bool` | `false` | no |
| <a name="input_app_settings"></a> [app\_settings](#input\_app\_settings) | A key-value pair of App Settings. | `map` | `{}` | no |
| <a name="input_application_logs_file_system_level"></a> [application\_logs\_file\_system\_level](#input\_application\_logs\_file\_system\_level) | Log level for filesystem based logging. Supported values are Error, Information, Verbose, Warning and Off. Defaults to Off. | `string` | `"Off"` | no |
| <a name="input_connection_strings"></a> [connection\_strings](#input\_connection\_strings) | Collection of connection string objects to create with App Service. | <pre>list(object({<br>    name  = string<br>    type  = string<br>    value = string<br>  }))</pre> | `[]` | no |
| <a name="input_default_tags"></a> [default\_tags](#input\_default\_tags) | A mapping of tags to assign to the resource. | `map` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | Var used for backend container name key | `string` | `"dev"` | no |
| <a name="input_ip_restrictions"></a> [ip\_restrictions](#input\_ip\_restrictions) | A list of IP addresses allowed to access the App Service. | <pre>list(object({<br>    name    = string<br>    cidr_ip = string<br>  }))</pre> | `[]` | no |
| <a name="input_is_blue_green_deployment_enabled"></a> [is\_blue\_green\_deployment\_enabled](#input\_is\_blue\_green\_deployment\_enabled) | Whether this app service uses a deployment slot to promote blue-green deployments. | `bool` | `false` | no |
| <a name="input_region"></a> [region](#input\_region) | Region in which resources are deployed | `string` | `"weu"` | no |
| <a name="input_resource_group_location"></a> [resource\_group\_location](#input\_resource\_group\_location) | The location/region where resource is created. Changing this forces a new resource to be created. | `string` | `"West Europe"` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group in which to create resource. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_custom_domain_verification_id"></a> [custom\_domain\_verification\_id](#output\_custom\_domain\_verification\_id) | An identifier used by App Service to perform domain ownership verification via DNS TXT record. |
| <a name="output_default_site_hostname_app_service"></a> [default\_site\_hostname\_app\_service](#output\_default\_site\_hostname\_app\_service) | The Default Hostname associated with the App Service. |
| <a name="output_default_site_hostname_pp_service_slot"></a> [default\_site\_hostname\_pp\_service\_slot](#output\_default\_site\_hostname\_pp\_service\_slot) | The Default Hostname associated with the App Service Slot. |
| <a name="output_id_app_service"></a> [id\_app\_service](#output\_id\_app\_service) | The ID of the App Service. |
| <a name="output_id_app_service_plan"></a> [id\_app\_service\_plan](#output\_id\_app\_service\_plan) | The ID of the App Service Plan component. |
| <a name="output_id_app_service_slot"></a> [id\_app\_service\_slot](#output\_id\_app\_service\_slot) | The ID of the App Service Slot |
| <a name="output_maximum_number_of_workers"></a> [maximum\_number\_of\_workers](#output\_maximum\_number\_of\_workers) | The maximum number of workers supported with the App Service Plan's sku. |
| <a name="output_outbound_ip_address_list"></a> [outbound\_ip\_address\_list](#output\_outbound\_ip\_address\_list) | A list of outbound IP addresses. |
<!-- END_TF_DOCS -->

## How to use 
```
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
```