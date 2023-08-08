<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >=3.68.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >=3.68.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_automation_account.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/automation_account) | resource |
| [azurerm_log_analytics_workspace.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/log_analytics_workspace) | resource |
| [azurerm_monitor_diagnostic_setting.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_diagnostic_setting) | resource |
| [azurerm_resource_group.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_automation_account_name"></a> [automation\_account\_name](#input\_automation\_account\_name) | value for automation\_account\_name | `any` | n/a | yes |
| <a name="input_automation_log_analytics_workspace_name"></a> [automation\_log\_analytics\_workspace\_name](#input\_automation\_log\_analytics\_workspace\_name) | Name of Log Analytics Workspace | `any` | n/a | yes |
| <a name="input_automation_sku_name"></a> [automation\_sku\_name](#input\_automation\_sku\_name) | value for automation\_sku\_name | `string` | `"Basic"` | no |
| <a name="input_location"></a> [location](#input\_location) | value for location | `any` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group | `any` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->