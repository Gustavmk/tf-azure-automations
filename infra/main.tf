terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version =  ">=3.68.0"
  }
}
provider "azurerm" {
    features {
        key_vault {
          purge_soft_delete_on_destroy = true
        }
    }
  
}
resource "azurerm_resource_group" "main" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_automation_account" "main" {
  name                = var.automation_account_name
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  sku_name            = var.automation_sku_name
}
