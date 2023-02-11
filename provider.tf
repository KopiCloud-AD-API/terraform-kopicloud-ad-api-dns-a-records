############################################
## KopiCloud AD API & Terraform Providers ##
############################################

# Configure the Terraform Provider
terraform {
  required_providers {
    kopicloud = {
      source  = "https://github.com/KopiCloud-AD-API/terraform-provider-kopicloud-ad-api"
    }
  }
}

# Configure the KopiCloud AD API Provider
provider "kopicloud" {
  host  = var.kopicloud_host
  token = var.kopicloud_token
}
