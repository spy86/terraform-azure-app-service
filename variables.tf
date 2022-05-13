###########################
# Common vars
###########################
variable "environment" {
  description = "Var used for backend container name key"
  type = string
  default = "dev"
}
variable "default_tags" {
  description = "A mapping of tags to assign to the resource."
  type = map
}
variable "region" {
  description = "Region in which resources are deployed"
  type = string
  default = "weu"
}
###########################
# Resource groups vars
###########################
variable "resource_group_location" {
  description = "The location/region where resource is created. Changing this forces a new resource to be created."
  default = "West Europe"
  type = string
}
variable "resource_group_name" {
  description = "The name of the resource group in which to create resource."
  type = string
}
###########################
# AppService vars
###########################
variable "app_service_plan_name" {
  description = "Specifies the name of the App Service Plan component. Changing this forces a new resource to be created."
  type = string
}
variable "app_service_plan_kind" {
  description = "The kind of the App Service Plan to create. Possible values are Windows (also available as App), Linux, elastic (for Premium Consumption) and FunctionApp (for a Consumption Plan). Defaults to Windows. Changing this forces a new resource to be created."
  type = string
  default = "Linux"
}
variable "app_service_plan_reserved" {
  description = "Is this App Service Plan Reserved. Defaults to false."
  type = bool
  default = true
}
variable "app_service_plan_tier" {
  description = "Specifies the plan's pricing tier. Valid option are Free, Shared, Basic, Standard, PremiumV2 and Isolated."
  type = string
  default = "Basic"
}
variable "app_service_plan_size" {
  description = "Size specifier of the resource SKU. Available sizes are F1(Free), D1(Shared), B1(Basic Small), B2(Basic Medium), B3(Basic Large), S1(Standard Small), P1V2(Premium V2 Small), P1V3(Premium V3 Small), P2V3(Premium V3 Medium), P3V3(Premium V3 Large), PC2 (Premium Container Small), PC3 (Premium Container Medium), PC4 (Premium Container Large), I1 (Isolated Small), I2 (Isolated Medium), I3 (Isolated Large), I1v2 (Isolated V2 Small), I2v2 (Isolated V2 Medium), I3v2 (Isolated V2 Large). Valid accepted values are: B1, B2, B3, D1, F1, FREE, I1, I1v2, I2, I2v2, I3, I3v2, P1V2, P1V3, P2V2, P2V3, P3V2, P3V3, PC2, PC3, PC4, S1, S2, S3, SHARED"
  type = string
  default = "S1"
}
variable "app_service_name" {
  description = "Name of APP"
  type = string
}
variable "app_service_settings" {
  description = "A key-value pair of App Settings"
  type = map
  default     = {}
}
variable "app_service_https_only" {
  description = "Can the App Service only be accessed via HTTPS? Defaults to false."
  type = bool
  default = false
}
variable "app_service_always_on" {
  description = "Should the app be loaded at all times? Defaults to false."
  type = bool
  default = false
}
variable "app_service_app_command_line" {
  description = "App command line to launch"
  type = string
  default = ""
}
variable "app_service_ftps_state" {
  description = "State of FTP / FTPS service for this App Service. Possible values include: AllAllowed, FtpsOnly and Disabled."
  type = string
  default = "FtpsOnly"
}
variable "app_service_http2_enabled" {
  description = "Is HTTP2 Enabled on this App Service? Defaults to false."
  type = bool
  default = false
}
variable "app_service_linux_fx_version" {
  description = "Linux App Framework and version for the App Service."
  type = string

}
variable "app_service_min_tls_version" {
  description = "The minimum supported TLS version for the app service. Possible values are 1.0, 1.1, and 1.2. Defaults to 1.2 for new app services."
  type = string
  default = "1.2"
}
variable "app_service_use_32_bit_worker_process" {
  description = "Should the App Service run in 32 bit mode, rather than 64 bit mode?"
  type = bool
  default = false
}
variable "app_service_websockets_enabled" {
  description = "Should WebSockets be enabled?"
  type = bool
  default = false
}
variable "ip_restrictions" {
  description = "A list of IP addresses allowed to access the App Service."
  type = list(object({
    name    = string
    cidr_ip = string
  }))
  default     = []
}
variable "connection_strings" {
  description = "Collection of connection string objects to create with App Service."
  default = []
  type = list(object({
    name  = string
    type  = string
    value = string
  }))
}
variable "application_logs_file_system_level" {
  description = "Log level for filesystem based logging. Supported values are Error, Information, Verbose, Warning and Off. Defaults to Off."
  default = "Off"
  type = string
}
variable "is_blue_green_deployment_enabled" {
  description = "Whether this app service uses a deployment slot to promote blue-green deployments."
  default = false
  type = bool
}
variable "app_settings" {
  description = "A key-value pair of App Settings."
  default     = {}
}