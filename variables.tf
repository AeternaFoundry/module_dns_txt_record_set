variable "txt_record_sets" {
  description = <<EOT
Map of txt_record_sets, attributes below
Required:
    - txt
    - zone
Optional:
    - name
    - ttl
EOT

  type = map(object({
    txt  = set(string)
    zone = string
    name = optional(string)
    ttl  = optional(number)
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

