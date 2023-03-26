resource "azurerm_service_plan" "az-serverless-terraform" {
  name                = "az-serverless-terraform"
  resource_group_name = azurerm_resource_group.az-serverless-terraform.name
  location            = azurerm_resource_group.az-serverless-terraform.location
  os_type             = "Linux"
  sku_name            = "F1"
}