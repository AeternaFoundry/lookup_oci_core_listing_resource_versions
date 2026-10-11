data "oci_core_listing_resource_versions" "core_listing_resource_versions_lookup" {
  for_each = var.core_listing_resource_versions_lookup

  listing_id = each.value.listing_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

