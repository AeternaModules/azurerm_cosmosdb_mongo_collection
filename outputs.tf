output "cosmosdb_mongo_collections" {
  description = "All cosmosdb_mongo_collection resources"
  value       = azurerm_cosmosdb_mongo_collection.cosmosdb_mongo_collections
}
output "cosmosdb_mongo_collections_account_name" {
  description = "List of account_name values across all cosmosdb_mongo_collections"
  value       = [for k, v in azurerm_cosmosdb_mongo_collection.cosmosdb_mongo_collections : v.account_name]
}
output "cosmosdb_mongo_collections_analytical_storage_ttl" {
  description = "List of analytical_storage_ttl values across all cosmosdb_mongo_collections"
  value       = [for k, v in azurerm_cosmosdb_mongo_collection.cosmosdb_mongo_collections : v.analytical_storage_ttl]
}
output "cosmosdb_mongo_collections_autoscale_settings" {
  description = "List of autoscale_settings values across all cosmosdb_mongo_collections"
  value       = [for k, v in azurerm_cosmosdb_mongo_collection.cosmosdb_mongo_collections : v.autoscale_settings]
}
output "cosmosdb_mongo_collections_database_name" {
  description = "List of database_name values across all cosmosdb_mongo_collections"
  value       = [for k, v in azurerm_cosmosdb_mongo_collection.cosmosdb_mongo_collections : v.database_name]
}
output "cosmosdb_mongo_collections_default_ttl_seconds" {
  description = "List of default_ttl_seconds values across all cosmosdb_mongo_collections"
  value       = [for k, v in azurerm_cosmosdb_mongo_collection.cosmosdb_mongo_collections : v.default_ttl_seconds]
}
output "cosmosdb_mongo_collections_index" {
  description = "List of index values across all cosmosdb_mongo_collections"
  value       = [for k, v in azurerm_cosmosdb_mongo_collection.cosmosdb_mongo_collections : v.index]
}
output "cosmosdb_mongo_collections_name" {
  description = "List of name values across all cosmosdb_mongo_collections"
  value       = [for k, v in azurerm_cosmosdb_mongo_collection.cosmosdb_mongo_collections : v.name]
}
output "cosmosdb_mongo_collections_resource_group_name" {
  description = "List of resource_group_name values across all cosmosdb_mongo_collections"
  value       = [for k, v in azurerm_cosmosdb_mongo_collection.cosmosdb_mongo_collections : v.resource_group_name]
}
output "cosmosdb_mongo_collections_shard_key" {
  description = "List of shard_key values across all cosmosdb_mongo_collections"
  value       = [for k, v in azurerm_cosmosdb_mongo_collection.cosmosdb_mongo_collections : v.shard_key]
}
output "cosmosdb_mongo_collections_system_indexes" {
  description = "List of system_indexes values across all cosmosdb_mongo_collections"
  value       = [for k, v in azurerm_cosmosdb_mongo_collection.cosmosdb_mongo_collections : v.system_indexes]
}
output "cosmosdb_mongo_collections_throughput" {
  description = "List of throughput values across all cosmosdb_mongo_collections"
  value       = [for k, v in azurerm_cosmosdb_mongo_collection.cosmosdb_mongo_collections : v.throughput]
}

