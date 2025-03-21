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
data "okta_user" "olivia" {
  search {
    name = "profile.login"
    value = "olivia@oliviabrown.xyz"
  }
}
data "okta_user" "hisu" {
  search {
    name = "profile.firstName"
    value = "Historia"
  }

  search {
    name = "profile.lastName"
    value = "Reiss"
  }
  
}

resource "okta_app_user" "okta-ice-olivia" {
    app_id = okta_app_bookmark.okta_ice.id
    user_id = data.okta_user.hisu.id
  
}



