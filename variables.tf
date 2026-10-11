variable "ami_ids_lookup" {
  description = <<EOT
Map of ami_ids_lookup, attributes below
Required:
    - owners
Optional:
    - executable_users
    - include_deprecated
    - name_regex
    - region
    - sort_ascending
    - filter (block):
        - name (required)
        - values (required)
EOT

  type = map(object({
    owners             = list(string)
    executable_users   = optional(list(string))
    include_deprecated = optional(bool)
    name_regex         = optional(string)
    region             = optional(string)
    sort_ascending     = optional(bool)
    filter = optional(list(object({
      name   = string
      values = set(string)
    })))
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

