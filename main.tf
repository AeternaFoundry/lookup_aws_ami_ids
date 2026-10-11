data "aws_ami_ids" "ami_ids_lookup" {
  for_each = var.ami_ids_lookup

  owners             = each.value.owners
  executable_users   = each.value.executable_users
  include_deprecated = each.value.include_deprecated
  name_regex         = each.value.name_regex
  region             = each.value.region
  sort_ascending     = each.value.sort_ascending

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      values = filter.value.values
    }
  }
}

