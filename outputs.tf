output "core_listing_resource_versions_lookup_id" {
  description = "Map of id values across all core_listing_resource_versions_lookup, keyed the same as var.core_listing_resource_versions_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_core_listing_resource_versions.core_listing_resource_versions_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "core_listing_resource_versions_lookup_app_catalog_listing_resource_versions" {
  description = "Map of app_catalog_listing_resource_versions values across all core_listing_resource_versions_lookup, keyed the same as var.core_listing_resource_versions_lookup except keys with no app_catalog_listing_resource_versions are omitted"
  value       = { for k, v in data.oci_core_listing_resource_versions.core_listing_resource_versions_lookup : k => v.app_catalog_listing_resource_versions if v.app_catalog_listing_resource_versions != null && length(v.app_catalog_listing_resource_versions) > 0 }
}
output "core_listing_resource_versions_lookup_filter" {
  description = "Map of filter values across all core_listing_resource_versions_lookup, keyed the same as var.core_listing_resource_versions_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_core_listing_resource_versions.core_listing_resource_versions_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "core_listing_resource_versions_lookup_listing_id" {
  description = "Map of listing_id values across all core_listing_resource_versions_lookup, keyed the same as var.core_listing_resource_versions_lookup except keys with no listing_id are omitted"
  value       = { for k, v in data.oci_core_listing_resource_versions.core_listing_resource_versions_lookup : k => v.listing_id if v.listing_id != null && length(v.listing_id) > 0 }
}

