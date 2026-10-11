output "ami_ids_lookup_id" {
  description = "Map of id values across all ami_ids_lookup, keyed the same as var.ami_ids_lookup"
  value       = { for k, v in data.aws_ami_ids.ami_ids_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ami_ids_lookup_executable_users" {
  description = "Map of executable_users values across all ami_ids_lookup, keyed the same as var.ami_ids_lookup"
  value       = { for k, v in data.aws_ami_ids.ami_ids_lookup : k => v.executable_users if v.executable_users != null && length(v.executable_users) > 0 }
}
output "ami_ids_lookup_filter" {
  description = "Map of filter values across all ami_ids_lookup, keyed the same as var.ami_ids_lookup"
  value       = { for k, v in data.aws_ami_ids.ami_ids_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "ami_ids_lookup_ids" {
  description = "Map of ids values across all ami_ids_lookup, keyed the same as var.ami_ids_lookup"
  value       = { for k, v in data.aws_ami_ids.ami_ids_lookup : k => v.ids if v.ids != null && length(v.ids) > 0 }
}
output "ami_ids_lookup_include_deprecated" {
  description = "Map of include_deprecated values across all ami_ids_lookup, keyed the same as var.ami_ids_lookup"
  value       = { for k, v in data.aws_ami_ids.ami_ids_lookup : k => v.include_deprecated if v.include_deprecated != null }
}
output "ami_ids_lookup_name_regex" {
  description = "Map of name_regex values across all ami_ids_lookup, keyed the same as var.ami_ids_lookup"
  value       = { for k, v in data.aws_ami_ids.ami_ids_lookup : k => v.name_regex if v.name_regex != null && length(v.name_regex) > 0 }
}
output "ami_ids_lookup_owners" {
  description = "Map of owners values across all ami_ids_lookup, keyed the same as var.ami_ids_lookup"
  value       = { for k, v in data.aws_ami_ids.ami_ids_lookup : k => v.owners if v.owners != null && length(v.owners) > 0 }
}
output "ami_ids_lookup_region" {
  description = "Map of region values across all ami_ids_lookup, keyed the same as var.ami_ids_lookup"
  value       = { for k, v in data.aws_ami_ids.ami_ids_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}
output "ami_ids_lookup_sort_ascending" {
  description = "Map of sort_ascending values across all ami_ids_lookup, keyed the same as var.ami_ids_lookup"
  value       = { for k, v in data.aws_ami_ids.ami_ids_lookup : k => v.sort_ascending if v.sort_ascending != null }
}

