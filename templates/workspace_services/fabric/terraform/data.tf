data "azurerm_resource_group" "ws" {
  name = local.workspace_resource_group_name
}

data "azurerm_virtual_network" "ws" {
  name                = local.virtual_network_name
  resource_group_name = local.workspace_resource_group_name
}

data "azurerm_subnet" "services" {
  name                 = "ServicesSubnet"
  virtual_network_name = local.virtual_network_name
  resource_group_name  = local.workspace_resource_group_name
}

data "azurerm_client_config" "current" {}
