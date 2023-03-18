#############################################
## KopiCloud AD API - Create DNS A Records ##
#############################################

# Create a DNS A Record for a computer
resource "kopicloud_dns_a_record" "test_a" {
  hostname   = "atftestvm01"
  ip_address = "100.30.1.1"
  zone_name  = "kopicloud.local"
}

# Output Created DNS A Record 
output "dns_a_record" {
  description = "Created DNS A Record"
  value       = resource.kopicloud_dns_a_record.test_a
}

output "dns_a_record_hostname" {
  description = "Hostname of Created DNS A Record"
  value       = resource.kopicloud_dns_a_record.test_a.hostname
}

