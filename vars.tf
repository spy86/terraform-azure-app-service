###########################
# Common vars
###########################
variable "envirioment" {
  description = "Var used for backend container name key"
}

variable "tag_envirioment" {
  description = "Tag describing the environment"
}
variable "resource_owner" {
  description = "Tag describing the resource owner"
}

variable "docker_registry_url" {
  description = ""
}
variable "docker_registry_username" {
  description = ""
}
variable "docker_registry_password" {
  description = ""
}

###########################
# Resource groups vars
###########################

variable "rg_location" {
  description = "Location of resource group"
  default = "West Europe"
}
variable "rg_name" {
  description = "Name of resource group"
}

###########################
# APP Service vars
###########################
variable "app_service_tier" {
  description = "Tier of Azure container registry"
  default = "Basic"
}

variable "app_service_name" {
  description = "Name of Azure container registry"
}

variable "app_service_website_port" {
  description = "Name of Azure container registry"
}

variable "app_service_size_name" {
  description = "Name of Azure container registry"
}

variable "app_service_compose_name" {
  description = "Name of Azure container registry"
}

variable "app_service_type" {
  description = "Name of Azure container registry"
}
