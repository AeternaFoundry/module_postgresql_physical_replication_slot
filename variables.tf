variable "physical_replication_slots" {
  description = <<EOT
Map of physical_replication_slots, attributes below
Required:
    - name
EOT

  type = map(object({
    name = string
  }))
}

