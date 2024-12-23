# Fabric Private Endpoint Resources

resource "azapi_resource" "pbi_privatelink" {
  type                      = "Microsoft.PowerBI/privateLinkServicesForPowerBI@2020-06-01"
  name                      = "plfabric-${local.workspace_resource_name_suffix}"
  location                  = "global"
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
  name                = "pbi-fabric-private-endpoint-${local.workspace_resource_name_suffix}"
  location            = data.azurerm_resource_group.ws.location
  resource_group_name = data.azurerm_resource_group.ws.name
  subnet_id           = data.azurerm_subnet.services.id

  private_dns_zone_group {
    name = "pbi-fabric-zones-${local.workspace_resource_name_suffix}"
    private_dns_zone_ids = [
      azurerm_private_dns_zone.analysis.id,
      azurerm_private_dns_zone.pbidedicated.id,
      azurerm_private_dns_zone.powerquery.id
    ]
  }

  private_service_connection {
    name                           = "pbi-fabric-connection-${local.workspace_resource_name_suffix}"
    private_connection_resource_id = azapi_resource.pbi_privatelink.id
    is_manual_connection           = false
    subresource_names              = ["tenant"]
  }

  depends_on = [
    azurerm_private_dns_zone_virtual_network_link.analysis_link,
    azurerm_private_dns_zone_virtual_network_link.pbidedicated_link,
    azurerm_private_dns_zone_virtual_network_link.powerquery_link
  ]
}
