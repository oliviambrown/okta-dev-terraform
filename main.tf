variable "org_name" {}
variable "base_url" {}
variable "client_id" {}
variable "scopes" {}

# Enable and configure the Okta provider
#Adding to trigger
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
    scopes = ["okta.groups.manage", "okta.users.manage", "okta.policies.manage", "okta.apps.manage", "okta.groups.read","okta.policies.read", "okta.users.read", "okta.apps.read", "okta.authenticators.manage", "okta.authenticators.read"]
    private_key = "/mnt/workspace/rsa.pem"
}

