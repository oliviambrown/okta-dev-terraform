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


data "okta_user" "olivia" {
  search {
    name = "profile.login"
    value = "olivia@oliviabrown.xyz"
  }
}

data "okta_group" "everyone" {
  name = "Everyone"
}



