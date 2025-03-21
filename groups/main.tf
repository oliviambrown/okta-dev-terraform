terraform {
  required_providers {
    okta = {
      source  = "okta/okta"
      version = "~> 4.0"
    }
  }
}

provider "okta" {
    org_name = var.org_name
    base_url = var.base_url
    client_id = var.client_id
    scopes = var.scopes
    private_key = "/mnt/workspace/rsa.pem"
}

resource "okta_app_bookmark" "okta_ice" {
    label = "Okta Ice"
    url = "https://oktaice.cloud/login/index.html"
  
}

data "okta_app" "ice_data" {
  id = okta_app_bookmark.okta_ice.id
}
data "okta_user" "olivia_data" {
  search {
    expression = "profile.firstName eq \"Olivia\""
  }
}



