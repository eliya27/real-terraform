resource "azurerm_resource_group" "resource_group" {
  name = var.resource-group-name
  location = var.resource-group-location
}