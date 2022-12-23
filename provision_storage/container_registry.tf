resource "azurerm_container_registry" "default" {
  name                = var.containter_registry_name
  resource_group_name = azurerm_resource_group.default.name
  location            = azurerm_resource_group.default.location
  network_rule_set = []
  sku                 = "Basic"
}