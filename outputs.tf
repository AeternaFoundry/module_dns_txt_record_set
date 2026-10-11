output "txt_record_sets_id" {
  description = "Map of id values across all txt_record_sets, keyed the same as var.txt_record_sets except keys with no id are omitted"
  value       = { for k, v in dns_txt_record_set.txt_record_sets : k => v.id if v.id != null && length(v.id) > 0 }
}
output "txt_record_sets_name" {
  description = "Map of name values across all txt_record_sets, keyed the same as var.txt_record_sets except keys with no name are omitted"
  value       = { for k, v in dns_txt_record_set.txt_record_sets : k => v.name if v.name != null && length(v.name) > 0 }
}
output "txt_record_sets_ttl" {
  description = "Map of ttl values across all txt_record_sets, keyed the same as var.txt_record_sets except keys with no ttl are omitted"
  value       = { for k, v in dns_txt_record_set.txt_record_sets : k => v.ttl if v.ttl != null }
}
output "txt_record_sets_txt" {
  description = "Map of txt values across all txt_record_sets, keyed the same as var.txt_record_sets except keys with no txt are omitted"
  value       = { for k, v in dns_txt_record_set.txt_record_sets : k => v.txt if v.txt != null && length(v.txt) > 0 }
}
output "txt_record_sets_zone" {
  description = "Map of zone values across all txt_record_sets, keyed the same as var.txt_record_sets except keys with no zone are omitted"
  value       = { for k, v in dns_txt_record_set.txt_record_sets : k => v.zone if v.zone != null && length(v.zone) > 0 }
}

