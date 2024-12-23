data "azurerm_resource_group" "ws" {
  name = local.workspace_resource_group_name
}

data "azurerm_virtual_network" "ws" {
  name                = local.virtual_network_name
  resource_group_name = data.azurerm_resource_group.ws.name
}

data "azurerm_firewall" "firewall" {
  name                = local.firewall_name
  resource_group_name = local.core_resource_group_name
}

data "azurerm_subnet" "services" {
  name                 = "ServicesSubnet"
  virtual_network_name = data.azurerm_virtual_network.ws.name
  resource_group_name  = data.azurerm_virtual_network.ws.resource_group_name
}

data "azurerm_client_config" "current" {}
