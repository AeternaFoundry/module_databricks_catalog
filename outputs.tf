output "catalogs_id" {
  description = "Map of id values across all catalogs, keyed the same as var.catalogs except keys with no id are omitted"
  value       = { for k, v in databricks_catalog.catalogs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "catalogs_browse_only" {
  description = "Map of browse_only values across all catalogs, keyed the same as var.catalogs except keys with no browse_only are omitted"
  value       = { for k, v in databricks_catalog.catalogs : k => v.browse_only if v.browse_only != null }
}
output "catalogs_catalog_type" {
  description = "Map of catalog_type values across all catalogs, keyed the same as var.catalogs except keys with no catalog_type are omitted"
  value       = { for k, v in databricks_catalog.catalogs : k => v.catalog_type if v.catalog_type != null && length(v.catalog_type) > 0 }
}
output "catalogs_comment" {
  description = "Map of comment values across all catalogs, keyed the same as var.catalogs except keys with no comment are omitted"
  value       = { for k, v in databricks_catalog.catalogs : k => v.comment if v.comment != null && length(v.comment) > 0 }
}
output "catalogs_connection_name" {
  description = "Map of connection_name values across all catalogs, keyed the same as var.catalogs except keys with no connection_name are omitted"
  value       = { for k, v in databricks_catalog.catalogs : k => v.connection_name if v.connection_name != null && length(v.connection_name) > 0 }
}
output "catalogs_created_at" {
  description = "Map of created_at values across all catalogs, keyed the same as var.catalogs except keys with no created_at are omitted"
  value       = { for k, v in databricks_catalog.catalogs : k => v.created_at if v.created_at != null }
}
output "catalogs_created_by" {
  description = "Map of created_by values across all catalogs, keyed the same as var.catalogs except keys with no created_by are omitted"
  value       = { for k, v in databricks_catalog.catalogs : k => v.created_by if v.created_by != null && length(v.created_by) > 0 }
}
output "catalogs_custom_max_retention_hours" {
  description = "Map of custom_max_retention_hours values across all catalogs, keyed the same as var.catalogs except keys with no custom_max_retention_hours are omitted"
  value       = { for k, v in databricks_catalog.catalogs : k => v.custom_max_retention_hours if v.custom_max_retention_hours != null }
}
output "catalogs_effective_predictive_optimization_flag" {
  description = "Map of effective_predictive_optimization_flag values across all catalogs, keyed the same as var.catalogs except keys with no effective_predictive_optimization_flag are omitted"
  value       = { for k, v in databricks_catalog.catalogs : k => one(v.effective_predictive_optimization_flag) if v.effective_predictive_optimization_flag != null && length(v.effective_predictive_optimization_flag) > 0 }
}
output "catalogs_enable_predictive_optimization" {
  description = "Map of enable_predictive_optimization values across all catalogs, keyed the same as var.catalogs except keys with no enable_predictive_optimization are omitted"
  value       = { for k, v in databricks_catalog.catalogs : k => v.enable_predictive_optimization if v.enable_predictive_optimization != null && length(v.enable_predictive_optimization) > 0 }
}
output "catalogs_force_destroy" {
  description = "Map of force_destroy values across all catalogs, keyed the same as var.catalogs except keys with no force_destroy are omitted"
  value       = { for k, v in databricks_catalog.catalogs : k => v.force_destroy if v.force_destroy != null }
}
output "catalogs_full_name" {
  description = "Map of full_name values across all catalogs, keyed the same as var.catalogs except keys with no full_name are omitted"
  value       = { for k, v in databricks_catalog.catalogs : k => v.full_name if v.full_name != null && length(v.full_name) > 0 }
}
output "catalogs_isolation_mode" {
  description = "Map of isolation_mode values across all catalogs, keyed the same as var.catalogs except keys with no isolation_mode are omitted"
  value       = { for k, v in databricks_catalog.catalogs : k => v.isolation_mode if v.isolation_mode != null && length(v.isolation_mode) > 0 }
}
output "catalogs_managed_encryption_settings" {
  description = "Map of managed_encryption_settings values across all catalogs, keyed the same as var.catalogs except keys with no managed_encryption_settings are omitted"
  value       = { for k, v in databricks_catalog.catalogs : k => one(v.managed_encryption_settings) if v.managed_encryption_settings != null && length(v.managed_encryption_settings) > 0 }
}
output "catalogs_metastore_id" {
  description = "Map of metastore_id values across all catalogs, keyed the same as var.catalogs except keys with no metastore_id are omitted"
  value       = { for k, v in databricks_catalog.catalogs : k => v.metastore_id if v.metastore_id != null && length(v.metastore_id) > 0 }
}
output "catalogs_name" {
  description = "Map of name values across all catalogs, keyed the same as var.catalogs except keys with no name are omitted"
  value       = { for k, v in databricks_catalog.catalogs : k => v.name if v.name != null && length(v.name) > 0 }
}
output "catalogs_options" {
  description = "Map of options values across all catalogs, keyed the same as var.catalogs except keys with no options are omitted"
  value       = { for k, v in databricks_catalog.catalogs : k => v.options if v.options != null && length(v.options) > 0 }
}
output "catalogs_owner" {
  description = "Map of owner values across all catalogs, keyed the same as var.catalogs except keys with no owner are omitted"
  value       = { for k, v in databricks_catalog.catalogs : k => v.owner if v.owner != null && length(v.owner) > 0 }
}
output "catalogs_properties" {
  description = "Map of properties values across all catalogs, keyed the same as var.catalogs except keys with no properties are omitted"
  value       = { for k, v in databricks_catalog.catalogs : k => v.properties if v.properties != null && length(v.properties) > 0 }
}
output "catalogs_provider_config" {
  description = "Map of provider_config values across all catalogs, keyed the same as var.catalogs except keys with no provider_config are omitted"
  value       = { for k, v in databricks_catalog.catalogs : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}
output "catalogs_provider_name" {
  description = "Map of provider_name values across all catalogs, keyed the same as var.catalogs except keys with no provider_name are omitted"
  value       = { for k, v in databricks_catalog.catalogs : k => v.provider_name if v.provider_name != null && length(v.provider_name) > 0 }
}
output "catalogs_provisioning_info" {
  description = "Map of provisioning_info values across all catalogs, keyed the same as var.catalogs except keys with no provisioning_info are omitted"
  value       = { for k, v in databricks_catalog.catalogs : k => one(v.provisioning_info) if v.provisioning_info != null && length(v.provisioning_info) > 0 }
}
output "catalogs_securable_type" {
  description = "Map of securable_type values across all catalogs, keyed the same as var.catalogs except keys with no securable_type are omitted"
  value       = { for k, v in databricks_catalog.catalogs : k => v.securable_type if v.securable_type != null && length(v.securable_type) > 0 }
}
output "catalogs_share_name" {
  description = "Map of share_name values across all catalogs, keyed the same as var.catalogs except keys with no share_name are omitted"
  value       = { for k, v in databricks_catalog.catalogs : k => v.share_name if v.share_name != null && length(v.share_name) > 0 }
}
output "catalogs_storage_location" {
  description = "Map of storage_location values across all catalogs, keyed the same as var.catalogs except keys with no storage_location are omitted"
  value       = { for k, v in databricks_catalog.catalogs : k => v.storage_location if v.storage_location != null && length(v.storage_location) > 0 }
}
output "catalogs_storage_root" {
  description = "Map of storage_root values across all catalogs, keyed the same as var.catalogs except keys with no storage_root are omitted"
  value       = { for k, v in databricks_catalog.catalogs : k => v.storage_root if v.storage_root != null && length(v.storage_root) > 0 }
}
output "catalogs_updated_at" {
  description = "Map of updated_at values across all catalogs, keyed the same as var.catalogs except keys with no updated_at are omitted"
  value       = { for k, v in databricks_catalog.catalogs : k => v.updated_at if v.updated_at != null }
}
output "catalogs_updated_by" {
  description = "Map of updated_by values across all catalogs, keyed the same as var.catalogs except keys with no updated_by are omitted"
  value       = { for k, v in databricks_catalog.catalogs : k => v.updated_by if v.updated_by != null && length(v.updated_by) > 0 }
}

