variable "catalogs" {
  description = <<EOT
Map of catalogs, attributes below
Optional:
    - browse_only
    - comment
    - connection_name
    - custom_max_retention_hours
    - enable_predictive_optimization
    - force_destroy
    - isolation_mode
    - metastore_id
    - name
    - options
    - owner
    - properties
    - provider_name
    - share_name
    - storage_root
    - effective_predictive_optimization_flag (block):
        - inherited_from_name (optional)
        - inherited_from_type (optional)
        - value (required)
    - managed_encryption_settings (block):
        - azure_encryption_settings (optional, block):
            - azure_cmk_access_connector_id (optional)
            - azure_cmk_managed_identity_id (optional)
            - azure_tenant_id (required)
        - azure_key_vault_key_id (optional)
        - customer_managed_key_id (optional)
    - provider_config (block):
        - workspace_id (optional)
    - provisioning_info (block):
        - state (optional)
EOT

  type = map(object({
    browse_only                    = optional(bool)
    comment                        = optional(string)
    connection_name                = optional(string)
    custom_max_retention_hours     = optional(number)
    enable_predictive_optimization = optional(string)
    force_destroy                  = optional(bool)
    isolation_mode                 = optional(string)
    metastore_id                   = optional(string)
    name                           = optional(string)
    options                        = optional(map(string))
    owner                          = optional(string)
    properties                     = optional(map(string))
    provider_name                  = optional(string)
    share_name                     = optional(string)
    storage_root                   = optional(string)
    effective_predictive_optimization_flag = optional(object({
      inherited_from_name = optional(string)
      inherited_from_type = optional(string)
      value               = string
    }))
    managed_encryption_settings = optional(object({
      azure_encryption_settings = optional(object({
        azure_cmk_access_connector_id = optional(string)
        azure_cmk_managed_identity_id = optional(string)
        azure_tenant_id               = string
      }))
      azure_key_vault_key_id  = optional(string)
      customer_managed_key_id = optional(string)
    }))
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
    provisioning_info = optional(object({
      state = optional(string)
    }))
  }))
}

