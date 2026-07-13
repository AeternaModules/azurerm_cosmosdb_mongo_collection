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
  # --- Unconfirmed validation candidates, derived from azurerm_cosmosdb_mongo_collection's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.CosmosEntityName] len(value) < 1 || len(value) > 255
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: account_name
  #   source:    [from validate.CosmosAccountName] !matched
  # path: database_name
  #   source:    [from validate.CosmosEntityName] len(value) < 1 || len(value) > 255
  # path: shard_key
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: default_ttl_seconds
  #   source:    validation.All(...) - no translation rule yet, add one
  # path: analytical_storage_ttl
  #   condition: value >= -1
  #   message:   must be at least -1
  # path: throughput
  #   source:    [from validate.CosmosThroughput] value < 400
  # path: throughput
  #   source:    [from validate.CosmosThroughput] value%100 != 0
  # path: autoscale_settings.max_throughput
  #   source:    [from validate.CosmosMaxThroughput] !ok
  # path: autoscale_settings.max_throughput
  #   source:    [from validate.CosmosMaxThroughput] v < 1000
  # path: autoscale_settings.max_throughput
  #   source:    [from validate.CosmosMaxThroughput] v%1000 != 0
}

