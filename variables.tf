variable "database_vm_cluster_networks_lookup" {
  description = <<EOT
Map of database_vm_cluster_networks_lookup, attributes below
Required:
    - compartment_id
    - exadata_infrastructure_id
Optional:
    - display_name
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id            = string
    exadata_infrastructure_id = string
    display_name              = optional(string)
    state                     = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

