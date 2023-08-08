terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.68.0"
    }
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

resource "azurerm_log_analytics_workspace" "main" {
  name                = var.automation_log_analytics_workspace_name
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  sku                 = "Free"
  retention_in_days   = 7 // 7 days Free, and 31 when paid
  daily_quota_gb      = -1
}


resource "azurerm_monitor_diagnostic_setting" "main" {
  name                       = "diagnostic-${var.automation_account_name}"
  target_resource_id         = azurerm_automation_account.main.id
  log_analytics_workspace_id = azurerm_log_analytics_workspace.main.id

  enabled_log {
    category = "AllLogs"

    retention_policy {
      enabled = false
    }
  }

  metric {
    category = "AllMetrics"

    retention_policy {
      enabled = false
    }
  }
}