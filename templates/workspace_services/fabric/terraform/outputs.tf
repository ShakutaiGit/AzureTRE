output "workspace_address_space" {
  value = jsonencode(data.azurerm_subnet.services.address_prefix)
}
