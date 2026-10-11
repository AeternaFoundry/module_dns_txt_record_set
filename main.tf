resource "dns_txt_record_set" "txt_record_sets" {
  for_each = var.txt_record_sets

  txt  = each.value.txt
  zone = each.value.zone
  name = each.value.name
  ttl  = each.value.ttl
}

