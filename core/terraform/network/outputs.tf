output "core_vnet_id" {
  value = azurerm_virtual_network.core.id
}

output "bastion_subnet_id" {
  value = [for s in azurerm_virtual_network.core.subnet : s if s.name == "AzureBastionSubnet"][0].id
}

output "azure_firewall_subnet_id" {
  value = [for s in azurerm_virtual_network.core.subnet : s if s.name == "AzureFirewallSubnet"][0].id
}

output "app_gw_subnet_id" {
  value = [for s in azurerm_virtual_network.core.subnet : s if s.name == "AppGwSubnet"][0].id
}

output "web_app_subnet_id" {
  value = [for s in azurerm_virtual_network.core.subnet : s if s.name == "WebAppSubnet"][0].id
}

output "shared_subnet_id" {
  value = [for s in azurerm_virtual_network.core.subnet : s if s.name == "SharedSubnet"][0].id
}

output "airlock_processor_subnet_id" {
  value = [for s in azurerm_virtual_network.core.subnet : s if s.name == "AirlockProcessorSubnet"][0].id
}

output "airlock_storage_subnet_id" {
  value = [for s in azurerm_virtual_network.core.subnet : s if s.name == "AirlockStorageSubnet"][0].id
}

output "airlock_events_subnet_id" {
  value = [for s in azurerm_virtual_network.core.subnet : s if s.name == "AirlockEventsSubnet"][0].id
}

output "resource_processor_subnet_id" {
  value = [for s in azurerm_virtual_network.core.subnet : s if s.name == "ResourceProcessorSubnet"][0].id
}

output "airlock_notification_subnet_id" {
  value = [for s in azurerm_virtual_network.core.subnet : s if s.name == "AirlockNotifiactionSubnet"][0].id
}

# DNS Zones

output "azure_monitor_dns_zone_id" {
  value = azurerm_private_dns_zone.azure_monitor.id
}

output "azure_monitor_oms_opinsights_dns_zone_id" {
  value = azurerm_private_dns_zone.azure_monitor_oms_opinsights.id
}

output "azure_monitor_ods_opinsights_dns_zone_id" {
  value = azurerm_private_dns_zone.azure_monitor_ods_opinsights.id
}

output "azure_monitor_agentsvc_dns_zone_id" {
  value = azurerm_private_dns_zone.azure_monitor_agentsvc.id
}

output "blob_core_dns_zone_id" {
  value = azurerm_private_dns_zone.blobcore.id
}

output "azurewebsites_dns_zone_id" {
  value = azurerm_private_dns_zone.azurewebsites.id
}

output "static_web_dns_zone_id" {
  value = azurerm_private_dns_zone.static_web.id
}

output "file_core_dns_zone_id" {
  value = azurerm_private_dns_zone.filecore.id
}

output "queue_core_dns_zone_id" {
  value = azurerm_private_dns_zone.private_dns_zones["privatelink.queue.core.windows.net"].id
}

output "table_core_dns_zone_id" {
  value = azurerm_private_dns_zone.private_dns_zones["privatelink.table.core.windows.net"].id
}
