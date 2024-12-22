# Fabric-specific DNS zones
# TODO: after validate the links are working create a PR To here https://github.com/microsoft/terraform-azurerm-environment-configuration/blob/main/locals.tf
resource "azurerm_private_dns_zone" "analysis" {
  name                = "privatelink.analysis.windows.net"
  resource_group_name = var.ws_resource_group_name
  tags                = local.tre_workspace_service_tags

  lifecycle { ignore_changes = [tags] }
}

resource "azurerm_private_dns_zone_virtual_network_link" "analysis_link" {
  name                  = "analysis-link-${local.workspace_resource_name_suffix}"
  resource_group_name   = var.ws_resource_group_name
  private_dns_zone_name = azurerm_private_dns_zone.analysis.name
  virtual_network_id    = azurerm_virtual_network.ws.id
  registration_enabled  = false
  tags                  = local.tre_workspace_service_tags

  lifecycle { ignore_changes = [tags] }
}

resource "azurerm_private_dns_zone" "pbidedicated" {
  name                = "privatelink.pbidedicated.windows.net"
  resource_group_name = var.ws_resource_group_name
  tags                = local.tre_workspace_service_tags

  lifecycle { ignore_changes = [tags] }
}

resource "azurerm_private_dns_zone_virtual_network_link" "pbidedicated_link" {
  name                  = "pbidedicated-link-${local.workspace_resource_name_suffix}"
  resource_group_name   = var.ws_resource_group_name
  private_dns_zone_name = azurerm_private_dns_zone.pbidedicated.name
  virtual_network_id    = azurerm_virtual_network.ws.id
  registration_enabled  = false
  tags                  = local.tre_workspace_service_tags

  lifecycle { ignore_changes = [tags] }
}

resource "azurerm_private_dns_zone" "powerquery" {
  name                = "privatelink.prod.powerquery.microsoft.com"
  resource_group_name = var.ws_resource_group_name
  tags                = local.tre_workspace_service_tags

  lifecycle { ignore_changes = [tags] }
}

resource "azurerm_private_dns_zone_virtual_network_link" "powerquery_link" {
  name                  = "powerquery-link-${local.workspace_resource_name_suffix}"
  resource_group_name   = var.ws_resource_group_name
  private_dns_zone_name = azurerm_private_dns_zone.powerquery.name
  virtual_network_id    = azurerm_virtual_network.ws.id
  registration_enabled  = false
  tags                  = local.tre_workspace_service_tags

  lifecycle { ignore_changes = [tags] }
}
