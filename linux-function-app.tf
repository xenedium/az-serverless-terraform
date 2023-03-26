resource "azurerm_linux_function_app" "az-serverless-terraform" {
  name                       = "az-serverless-terraform"
  resource_group_name        = azurerm_resource_group.az-serverless-terraform.name
  location                   = azurerm_resource_group.az-serverless-terraform.location
  storage_account_name       = azurerm_storage_account.az-serverless-terraform.name
  storage_account_access_key = azurerm_storage_account.az-serverless-terraform.primary_access_key
  service_plan_id            = azurerm_service_plan.az-serverless-terraform.id
  site_config {
    application_stack {
      node_version = 18
      docker {
        registry_url = var.registry_url
        image_name   = var.image_name
        image_tag    = var.image_tag
      }
    }
  }
}