
# TERRAFORM (AZURE app service for docker containers)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

## Providers

| Name | Version |
|------|---------|
| azurem | latest |
| azurerm | latest |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| app\_service\_compose\_name | Name of Azure container registry | `any` | n/a | yes |
| app\_service\_name | Name of Azure container registry | `any` | n/a | yes |
| app\_service\_size\_name | Name of Azure container registry | `any` | n/a | yes |
| app\_service\_tier | Tier of Azure container registry | `string` | `"Basic"` | no |
| app\_service\_type | Name of Azure container registry | `any` | n/a | yes |
| app\_service\_website\_port | Name of Azure container registry | `any` | n/a | yes |
| docker\_registry\_password | n/a | `any` | n/a | yes |
| docker\_registry\_url | n/a | `any` | n/a | yes |
| docker\_registry\_username | n/a | `any` | n/a | yes |
| envirioment | Var used for backend container name key | `any` | n/a | yes |
| resource\_owner | Tag describing the resource owner | `any` | n/a | yes |
| rg\_location | Location of resource group | `string` | `"West Europe"` | no |
| rg\_name | Name of resource group | `any` | n/a | yes |
| tag\_envirioment | Tag describing the environment | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| app\_service\_default\_hostname | Default URL |
| app\_service\_name | APp service name |

### Terraform plan
```
terraform apply -var-file="env/dev.tfvars"
```
### Terraform apply
```
terraform plan -var-file="env/dev.tfvars"
```

