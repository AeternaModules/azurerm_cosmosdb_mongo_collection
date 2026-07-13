variable "cosmosdb_mongo_collections" {
  description = <<EOT
Map of cosmosdb_mongo_collections, attributes below
Required:
    - account_name
    - database_name
    - name
    - resource_group_name
Optional:
    - analytical_storage_ttl
    - default_ttl_seconds
    - shard_key
    - throughput
    - autoscale_settings (block):
        - max_throughput (optional)
    - index (block):
        - keys (required)
        - unique (optional)
EOT

  type = map(object({
    account_name           = string
    database_name          = string
    name                   = string
    resource_group_name    = string
    analytical_storage_ttl = optional(number)
    default_ttl_seconds    = optional(number)
    shard_key              = optional(string)
    throughput             = optional(number)
    autoscale_settings = optional(object({
      max_throughput = optional(number)
    }))
    index = optional(list(object({
      keys   = list(string)
      unique = optional(bool)
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.cosmosdb_mongo_collections : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.cosmosdb_mongo_collections : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.cosmosdb_mongo_collections : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.cosmosdb_mongo_collections : (
        v.shard_key == null || (length(v.shard_key) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.cosmosdb_mongo_collections : (
        v.analytical_storage_ttl == null || (v.analytical_storage_ttl >= -1)
      )
    ])
    error_message = "must be at least -1"
  }
  # Note: 10 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

