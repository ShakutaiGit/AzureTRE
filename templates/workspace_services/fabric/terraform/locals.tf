locals {
    workspace_short_id                     = substr(var.workspace_id, -4, -1)
    workspace_resource_name_suffix         = "${var.tre_id}-ws-${local.workspace_short_id}"
    workspace_resource_group_name          = "rg-${local.workspace_resource_name_suffix}"
    virtual_network_name                   = "vnet-${local.workspace_resource_name_suffix}"
    firewall_name                          = "fw-${var.tre_id}"
    core_resource_group_name               = "rg-${var.tre_id}"
    pbi_privatelink_type                   = "Microsoft.PowerBI/privateLinkServicesForPowerBI@2020-06-01"
    pbi_privatelink_name_prefix            = "plfabric"
    pbi_privatelink_location               = "global"
    private_endpoint_name_prefix           = "pbi-fabric-private-endpoint"
    dns_zone_group_name_prefix             = "pbi-fabric-zones"
    private_service_connection_name_prefix = "pbi-fabric-connection"
    subresource_names                      = ["tenant"]
    tre_workspace_service_tags = {
    tre_id                   = var.tre_id
    tre_workspace_id         = var.workspace_id
    tre_workspace_service_id = var.tre_resource_id
  }
    dns_zones = {
      analysis      = "privatelink.analysis.windows.net"
      pbidedicated  = "privatelink.pbidedicated.windows.net"
      powerquery    = "privatelink.prod.powerquery.microsoft.com"
    }
}
