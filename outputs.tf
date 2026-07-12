output "cosmosdb_mongo_collections_account_name" {
  description = "Map of account_name values across all cosmosdb_mongo_collections, keyed the same as var.cosmosdb_mongo_collections"
  value       = { for k, v in azurerm_cosmosdb_mongo_collection.cosmosdb_mongo_collections : k => v.account_name }
}
output "cosmosdb_mongo_collections_analytical_storage_ttl" {
  description = "Map of analytical_storage_ttl values across all cosmosdb_mongo_collections, keyed the same as var.cosmosdb_mongo_collections"
  value       = { for k, v in azurerm_cosmosdb_mongo_collection.cosmosdb_mongo_collections : k => v.analytical_storage_ttl }
}
output "cosmosdb_mongo_collections_autoscale_settings" {
  description = "Map of autoscale_settings values across all cosmosdb_mongo_collections, keyed the same as var.cosmosdb_mongo_collections"
  value       = { for k, v in azurerm_cosmosdb_mongo_collection.cosmosdb_mongo_collections : k => v.autoscale_settings }
}
output "cosmosdb_mongo_collections_database_name" {
  description = "Map of database_name values across all cosmosdb_mongo_collections, keyed the same as var.cosmosdb_mongo_collections"
  value       = { for k, v in azurerm_cosmosdb_mongo_collection.cosmosdb_mongo_collections : k => v.database_name }
}
output "cosmosdb_mongo_collections_default_ttl_seconds" {
  description = "Map of default_ttl_seconds values across all cosmosdb_mongo_collections, keyed the same as var.cosmosdb_mongo_collections"
  value       = { for k, v in azurerm_cosmosdb_mongo_collection.cosmosdb_mongo_collections : k => v.default_ttl_seconds }
}
output "cosmosdb_mongo_collections_index" {
  description = "Map of index values across all cosmosdb_mongo_collections, keyed the same as var.cosmosdb_mongo_collections"
  value       = { for k, v in azurerm_cosmosdb_mongo_collection.cosmosdb_mongo_collections : k => v.index }
}
output "cosmosdb_mongo_collections_name" {
  description = "Map of name values across all cosmosdb_mongo_collections, keyed the same as var.cosmosdb_mongo_collections"
  value       = { for k, v in azurerm_cosmosdb_mongo_collection.cosmosdb_mongo_collections : k => v.name }
}
output "cosmosdb_mongo_collections_resource_group_name" {
  description = "Map of resource_group_name values across all cosmosdb_mongo_collections, keyed the same as var.cosmosdb_mongo_collections"
  value       = { for k, v in azurerm_cosmosdb_mongo_collection.cosmosdb_mongo_collections : k => v.resource_group_name }
}
output "cosmosdb_mongo_collections_shard_key" {
  description = "Map of shard_key values across all cosmosdb_mongo_collections, keyed the same as var.cosmosdb_mongo_collections"
  value       = { for k, v in azurerm_cosmosdb_mongo_collection.cosmosdb_mongo_collections : k => v.shard_key }
}
output "cosmosdb_mongo_collections_system_indexes" {
  description = "Map of system_indexes values across all cosmosdb_mongo_collections, keyed the same as var.cosmosdb_mongo_collections"
  value       = { for k, v in azurerm_cosmosdb_mongo_collection.cosmosdb_mongo_collections : k => v.system_indexes }
}
output "cosmosdb_mongo_collections_throughput" {
  description = "Map of throughput values across all cosmosdb_mongo_collections, keyed the same as var.cosmosdb_mongo_collections"
  value       = { for k, v in azurerm_cosmosdb_mongo_collection.cosmosdb_mongo_collections : k => v.throughput }
}

