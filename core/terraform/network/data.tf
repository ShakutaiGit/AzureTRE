# data "azurerm_subnet" "bastion" {
#   name                 = "AzureBastionSubnet"
#   virtual_network_name = azurerm_virtual_network.core.name
#   resource_group_name  = var.resource_group_name
#   depends_on = [azurerm_virtual_network.core]
# }

# data "azurerm_subnet" "azure_firewall" {
#   name                 = "AzureFirewallSubnet"
#   virtual_network_name = azurerm_virtual_network.core.name
#   resource_group_name  = var.resource_group_name
#   depends_on = [azurerm_virtual_network.core]
# }

# data "azurerm_subnet" "app_gw" {
#   name                 = "AppGwSubnet"
#   virtual_network_name = azurerm_virtual_network.core.name
#   resource_group_name  = var.resource_group_name
#   depends_on = [azurerm_virtual_network.core]
# }

# data "azurerm_subnet" "web_app" {
#   name                 = "WebAppSubnet"
#   virtual_network_name = azurerm_virtual_network.core.name
#   resource_group_name  = var.resource_group_name
#   depends_on = [azurerm_virtual_network.core]
# }

# data "azurerm_subnet" "shared" {
#   name                 = "SharedSubnet"
#   virtual_network_name = azurerm_virtual_network.core.name
#   resource_group_name  = var.resource_group_name
#   depends_on = [azurerm_virtual_network.core]
# }

# data "azurerm_subnet" "resource_processor" {
#   name                 = "ResourceProcessorSubnet"
#   virtual_network_name = azurerm_virtual_network.core.name
#   resource_group_name  = var.resource_group_name
#   depends_on = [azurerm_virtual_network.core]
# }

# data "azurerm_subnet" "airlock_processor" {
#   name                 = "AirlockProcessorSubnet"
#   virtual_network_name = azurerm_virtual_network.core.name
#   resource_group_name  = var.resource_group_name
#   depends_on = [azurerm_virtual_network.core]
# }

# data "azurerm_subnet" "airlock_notification" {
#   name                 = "AirlockNotifiactionSubnet"
#   virtual_network_name = azurerm_virtual_network.core.name
#   resource_group_name  = var.resource_group_name
#   depends_on = [azurerm_virtual_network.core]
# }

# data "azurerm_subnet" "airlock_storage" {
#   name                 = "AirlockStorageSubnet"
#   virtual_network_name = azurerm_virtual_network.core.name
#   resource_group_name  = var.resource_group_name
#   depends_on = [azurerm_virtual_network.core]
# }

# data "azurerm_subnet" "airlock_events" {
#   name                 = "AirlockEventsSubnet"
#   virtual_network_name = azurerm_virtual_network.core.name
#   resource_group_name  = var.resource_group_name
#   depends_on = [azurerm_virtual_network.core]
# }

# data "azurerm_subnet" "firewall_management" {
#   name                 = "AzureFirewallManagementSubnet"
#   virtual_network_name = azurerm_virtual_network.core.name
#   resource_group_name  = var.resource_group_name
#   depends_on = [azurerm_virtual_network.core]
# }
