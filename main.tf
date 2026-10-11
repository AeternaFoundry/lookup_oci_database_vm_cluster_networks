data "oci_database_vm_cluster_networks" "database_vm_cluster_networks_lookup" {
  for_each = var.database_vm_cluster_networks_lookup

  compartment_id            = each.value.compartment_id
  exadata_infrastructure_id = each.value.exadata_infrastructure_id
  display_name              = each.value.display_name
  state                     = each.value.state

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

