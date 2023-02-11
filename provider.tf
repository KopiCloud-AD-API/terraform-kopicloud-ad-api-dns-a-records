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
  host  = "https://api.kopicloud.local"
  token = "Basic b3NKYXu6UZFsdjMyQnVs8DN9"
}
