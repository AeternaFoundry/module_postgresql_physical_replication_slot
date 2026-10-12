output "physical_replication_slots_id" {
  description = "Map of id values across all physical_replication_slots, keyed the same as var.physical_replication_slots except keys with no id are omitted"
  value       = { for k, v in postgresql_physical_replication_slot.physical_replication_slots : k => v.id if v.id != null && length(v.id) > 0 }
}
output "physical_replication_slots_name" {
  description = "Map of name values across all physical_replication_slots, keyed the same as var.physical_replication_slots except keys with no name are omitted"
  value       = { for k, v in postgresql_physical_replication_slot.physical_replication_slots : k => v.name if v.name != null && length(v.name) > 0 }
}

