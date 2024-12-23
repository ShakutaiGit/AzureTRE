locals {
    workspace_short_id             = substr(var.workspace_id, -4, -1)
    workspace_resource_name_suffix = "${var.tre_id}-ws-${local.workspace_short_id}"
    workspace_resource_group_name  = "rg-${local.workspace_resource_name_suffix}"
    short_workspace_id             = substr(var.tre_resource_id, -4, -1)
    virtual_network_name           = "vnet-${local.workspace_resource_name_suffix}"
    firewall_name                  = "fw-${var.tre_id}"
    core_resource_group_name       = "rg-${var.tre_id}"
    tre_workspace_service_tags = {
    tre_id                   = var.tre_id
    tre_workspace_id         = var.workspace_id
    tre_workspace_service_id = var.tre_resource_id
  }
}
