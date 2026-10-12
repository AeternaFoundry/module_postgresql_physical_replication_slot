resource "postgresql_physical_replication_slot" "physical_replication_slots" {
  for_each = var.physical_replication_slots

  name = each.value.name
}

