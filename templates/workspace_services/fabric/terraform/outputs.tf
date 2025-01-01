output "analysis_dns_zone_id" {
  value = azurerm_private_dns_zone.dns_zone["analysis"].id
}

output "pbidedicated_dns_zone_id" {
  value = azurerm_private_dns_zone.dns_zone["pbidedicated"].id
}

output "powerquery_dns_zone_id" {
  value = azurerm_private_dns_zone.dns_zone["powerquery"].id
}

output "fabric_private_endpoint_name" {
  value = azurerm_private_endpoint.fabric_pbi.name
}

output "pbi_privatelink_id" {
  value = azapi_resource.pbi_privatelink.id
}

output "workspace_address_space" {
  value = jsonencode(data.azurerm_virtual_network.ws.address_space)
}
