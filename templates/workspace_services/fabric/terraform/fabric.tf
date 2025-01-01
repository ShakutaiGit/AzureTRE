resource "azapi_resource" "pbi_privatelink" {
  type                      = local.pbi_privatelink_type
  name                      = "${local.pbi_privatelink_name_prefix}-${local.workspace_resource_name_suffix}"
  location                  = local.pbi_privatelink_location
  parent_id                 = data.azurerm_resource_group.ws.id
  schema_validation_enabled = false

  body = {
    properties = {
      privateEndpointConnections = []
      tenantId                   = data.azurerm_client_config.current.tenant_id
    }
  }
}

resource "azurerm_private_endpoint" "fabric_pbi" {
  name                = "${local.private_endpoint_name_prefix}-${local.workspace_resource_name_suffix}"
  location            = data.azurerm_resource_group.ws.location
  resource_group_name = local.workspace_resource_group_name
  subnet_id           = data.azurerm_subnet.services.id

  private_dns_zone_group {
    name = "${local.dns_zone_group_name_prefix}-${local.workspace_resource_name_suffix}"
    private_dns_zone_ids = [
      for dns_key in keys(local.dns_zones) : azurerm_private_dns_zone.dns_zone[dns_key].id
    ]
  }

  private_service_connection {
    name                           = "${local.private_service_connection_name_prefix}-${local.workspace_resource_name_suffix}"
    private_connection_resource_id = azapi_resource.pbi_privatelink.id
    is_manual_connection           = false
    subresource_names              = local.subresource_names
  }

  depends_on = [
    for dns_key in keys(local.dns_zones) : azurerm_private_dns_zone_virtual_network_link.dns_zone_link[dns_key]
  ]
}
