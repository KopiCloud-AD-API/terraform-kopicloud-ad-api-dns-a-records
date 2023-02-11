###########################################
## KopiCloud AD API - List DNS A Records ##
###########################################

# List All DNS A Records
data "kopicloud_dns_a_records_list" "test_a_all" {
}

# Returns All DNS A Records
output "OUTPUT_dns_a_records_list_all" {
  description = "List Existing DNS A Records"
  value       = data.kopicloud_dns_a_records_list.test_a_all
}

#######################################

# Filter DNS A Records with the Zone Name
data "kopicloud_dns_a_records_list" "test_a_zone_name" {
  zone_name = "kopicloud.local"
}

# Returns all DNS A Records that matches the Zone Name
output "OUTPUT_dns_a_records_list_zone_name" {
  description = "List existing DNS A Records filtered by Zone Name"
  value       = data.kopicloud_dns_a_records_list.test_a_zone_name
}

#######################################

# Filter DNS A Records with an IP Address
data "kopicloud_dns_a_records_list" "test_a_ip" {
  ip_address = "12.12.12.12"
}

# Returns all DNS A Records that matches the IP Address
output "OUTPUT_dns_a_records_list_ip_address" {
  description = "List existing DNS A Records filtered by IP Address"
  value       = data.kopicloud_dns_a_records_list.test_a_ip
}

#######################################

# Filter DNS A Records with a Hostname
data "kopicloud_dns_a_records_list" "test_a_hostname" {
  hostname = "computer75"
}

# Returns all DNS A Records that matches the Hostname
output "dns_a_records_list_hostname" {
  description = "List Existing DNS A Records"
  value       = data.kopicloud_dns_a_records_list.test_a_hostname
}

# Returns the IP Address of the 1st DNS A Record"
output "dns_a_records_list_hostname_record_1_ip_address" {
  description = "Show the IP Address of the 1st DNS A Record"
  value       = data.kopicloud_dns_a_records_list.test_a_hostname.result.0.data
}
