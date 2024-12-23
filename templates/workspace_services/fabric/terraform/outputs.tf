output "analysis_dns_zone_id" {
  value = azurerm_private_dns_zone.analysis.name
}

output "pbidedicated_dns_zone_id" {
  value = azurerm_private_dns_zone.pbidedicated.name
}

output "powerquery_dns_zone_id" {
  value = azurerm_private_dns_zone.powerquery.name
}

output "fabric_private_endpoint_name" {
  value = azurerm_private_endpoint.fabric_pbi.name
}

output "pbi_privatelink_id" {
  value = azapi_resource.pbi_privatelink.id
}
