variable "core_listing_resource_versions_lookup" {
  description = <<EOT
Map of core_listing_resource_versions_lookup, attributes below
Required:
    - listing_id
Optional:
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    listing_id = string
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

