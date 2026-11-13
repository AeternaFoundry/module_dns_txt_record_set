output "txt_record_sets_id" {
  description = "Map of id values across all txt_record_sets, keyed the same as var.txt_record_sets"
  value       = { for k, v in dns_txt_record_set.txt_record_sets : k => v.id }
}
output "txt_record_sets_name" {
  description = "Map of name values across all txt_record_sets, keyed the same as var.txt_record_sets"
  value       = { for k, v in dns_txt_record_set.txt_record_sets : k => v.name }
}
output "txt_record_sets_ttl" {
  description = "Map of ttl values across all txt_record_sets, keyed the same as var.txt_record_sets"
  value       = { for k, v in dns_txt_record_set.txt_record_sets : k => v.ttl }
}
output "txt_record_sets_txt" {
  description = "Map of txt values across all txt_record_sets, keyed the same as var.txt_record_sets"
  value       = { for k, v in dns_txt_record_set.txt_record_sets : k => v.txt }
}
output "txt_record_sets_zone" {
  description = "Map of zone values across all txt_record_sets, keyed the same as var.txt_record_sets"
  value       = { for k, v in dns_txt_record_set.txt_record_sets : k => v.zone }
}

