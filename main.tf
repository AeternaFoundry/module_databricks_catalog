resource "databricks_catalog" "catalogs" {
  for_each = var.catalogs

  browse_only                    = each.value.browse_only
  comment                        = each.value.comment
  connection_name                = each.value.connection_name
  custom_max_retention_hours     = each.value.custom_max_retention_hours
  enable_predictive_optimization = each.value.enable_predictive_optimization
  force_destroy                  = each.value.force_destroy
  isolation_mode                 = each.value.isolation_mode
  metastore_id                   = each.value.metastore_id
  name                           = each.value.name
  options                        = each.value.options
  owner                          = each.value.owner
  properties                     = each.value.properties
  provider_name                  = each.value.provider_name
  share_name                     = each.value.share_name
  storage_root                   = each.value.storage_root

  dynamic "effective_predictive_optimization_flag" {
    for_each = each.value.effective_predictive_optimization_flag != null ? [each.value.effective_predictive_optimization_flag] : []
    content {
      inherited_from_name = effective_predictive_optimization_flag.value.inherited_from_name
      inherited_from_type = effective_predictive_optimization_flag.value.inherited_from_type
      value               = effective_predictive_optimization_flag.value.value
    }
  }

  dynamic "managed_encryption_settings" {
    for_each = each.value.managed_encryption_settings != null ? [each.value.managed_encryption_settings] : []
    content {
      dynamic "azure_encryption_settings" {
        for_each = managed_encryption_settings.value.azure_encryption_settings != null ? [managed_encryption_settings.value.azure_encryption_settings] : []
        content {
          azure_cmk_access_connector_id = azure_encryption_settings.value.azure_cmk_access_connector_id
          azure_cmk_managed_identity_id = azure_encryption_settings.value.azure_cmk_managed_identity_id
          azure_tenant_id               = azure_encryption_settings.value.azure_tenant_id
        }
      }
      azure_key_vault_key_id  = managed_encryption_settings.value.azure_key_vault_key_id
      customer_managed_key_id = managed_encryption_settings.value.customer_managed_key_id
    }
  }

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }

  dynamic "provisioning_info" {
    for_each = each.value.provisioning_info != null ? [each.value.provisioning_info] : []
    content {
      state = provisioning_info.value.state
    }
  }
}

