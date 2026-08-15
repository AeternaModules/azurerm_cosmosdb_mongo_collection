output "cosmosdb_mongo_collections_id" {
  description = "Map of id values across all cosmosdb_mongo_collections, keyed the same as var.cosmosdb_mongo_collections"
  value       = { for k, v in azurerm_cosmosdb_mongo_collection.cosmosdb_mongo_collections : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cosmosdb_mongo_collections_account_name" {
  description = "Map of account_name values across all cosmosdb_mongo_collections, keyed the same as var.cosmosdb_mongo_collections"
  value       = { for k, v in azurerm_cosmosdb_mongo_collection.cosmosdb_mongo_collections : k => v.account_name if v.account_name != null && length(v.account_name) > 0 }
}
output "cosmosdb_mongo_collections_analytical_storage_ttl" {
  description = "Map of analytical_storage_ttl values across all cosmosdb_mongo_collections, keyed the same as var.cosmosdb_mongo_collections"
  value       = { for k, v in azurerm_cosmosdb_mongo_collection.cosmosdb_mongo_collections : k => v.analytical_storage_ttl if v.analytical_storage_ttl != null }
}
output "cosmosdb_mongo_collections_autoscale_settings" {
  description = "Map of autoscale_settings values across all cosmosdb_mongo_collections, keyed the same as var.cosmosdb_mongo_collections"
  value       = { for k, v in azurerm_cosmosdb_mongo_collection.cosmosdb_mongo_collections : k => one(v.autoscale_settings) if v.autoscale_settings != null && length(v.autoscale_settings) > 0 }
}
output "cosmosdb_mongo_collections_database_name" {
  description = "Map of database_name values across all cosmosdb_mongo_collections, keyed the same as var.cosmosdb_mongo_collections"
  value       = { for k, v in azurerm_cosmosdb_mongo_collection.cosmosdb_mongo_collections : k => v.database_name if v.database_name != null && length(v.database_name) > 0 }
}
output "cosmosdb_mongo_collections_default_ttl_seconds" {
  description = "Map of default_ttl_seconds values across all cosmosdb_mongo_collections, keyed the same as var.cosmosdb_mongo_collections"
  value       = { for k, v in azurerm_cosmosdb_mongo_collection.cosmosdb_mongo_collections : k => v.default_ttl_seconds if v.default_ttl_seconds != null }
}
output "cosmosdb_mongo_collections_index" {
  description = "Map of index values across all cosmosdb_mongo_collections, keyed the same as var.cosmosdb_mongo_collections"
  value       = { for k, v in azurerm_cosmosdb_mongo_collection.cosmosdb_mongo_collections : k => v.index if v.index != null && length(v.index) > 0 }
}
output "cosmosdb_mongo_collections_name" {
  description = "Map of name values across all cosmosdb_mongo_collections, keyed the same as var.cosmosdb_mongo_collections"
  value       = { for k, v in azurerm_cosmosdb_mongo_collection.cosmosdb_mongo_collections : k => v.name if v.name != null && length(v.name) > 0 }
}
output "cosmosdb_mongo_collections_resource_group_name" {
  description = "Map of resource_group_name values across all cosmosdb_mongo_collections, keyed the same as var.cosmosdb_mongo_collections"
  value       = { for k, v in azurerm_cosmosdb_mongo_collection.cosmosdb_mongo_collections : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "cosmosdb_mongo_collections_shard_key" {
  description = "Map of shard_key values across all cosmosdb_mongo_collections, keyed the same as var.cosmosdb_mongo_collections"
  value       = { for k, v in azurerm_cosmosdb_mongo_collection.cosmosdb_mongo_collections : k => v.shard_key if v.shard_key != null && length(v.shard_key) > 0 }
}
output "cosmosdb_mongo_collections_system_indexes" {
  description = "Map of system_indexes values across all cosmosdb_mongo_collections, keyed the same as var.cosmosdb_mongo_collections"
  value       = { for k, v in azurerm_cosmosdb_mongo_collection.cosmosdb_mongo_collections : k => v.system_indexes if v.system_indexes != null && length(v.system_indexes) > 0 }
}
output "cosmosdb_mongo_collections_throughput" {
  description = "Map of throughput values across all cosmosdb_mongo_collections, keyed the same as var.cosmosdb_mongo_collections"
  value       = { for k, v in azurerm_cosmosdb_mongo_collection.cosmosdb_mongo_collections : k => v.throughput if v.throughput != null }
}

