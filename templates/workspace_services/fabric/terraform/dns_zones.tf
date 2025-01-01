resource "azurerm_private_dns_zone" "dns_zone" {
  for_each = local.dns_zones
  name                = module.terraform_azurerm_environment_configuration.private_links[each.value]
  resource_group_name = local.workspace_resource_group_name
  tags                = local.tre_workspace_service_tags

  lifecycle {
    ignore_changes = [tags]
  }
}

resource "azurerm_private_dns_zone_virtual_network_link" "dns_zone_link" {
  for_each = local.dns_zones
  name                  = "${each.key}-link-${local.workspace_resource_name_suffix}"
  resource_group_name   = local.workspace_resource_group_name
  private_dns_zone_name = azurerm_private_dns_zone.dns_zone[each.key].name
  virtual_network_id    = data.azurerm_virtual_network.ws.id
  registration_enabled  = false
  tags                  = local.tre_workspace_service_tags

  lifecycle {
    ignore_changes = [tags]
  }
}
