resource "azurerm_storage_account" "az-serverless-terraform" {
  name                     = "azserverlessterraform"
  resource_group_name      = azurerm_resource_group.az-serverless-terraform.name
  location                 = azurerm_resource_group.az-serverless-terraform.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}