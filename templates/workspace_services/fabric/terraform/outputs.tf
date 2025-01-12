output "workspace_address_space" {
  value = jsonencode(data.azurerm_subnet.services.address_prefix)
}

output "connection_uri" {
  value = format("%s%s", local.fabric_ctid_url, data.azurerm_client_config.current.tenant_id)
}
