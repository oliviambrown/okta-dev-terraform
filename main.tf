variable "TF_VAR_org_name" {}
variable "TF_VAR_base_url" {}
variable "TF_VAR_client_id" {}
variable "TF_VAR_scopes" {}

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
    org_name = var.TF_VAR_org_name
    base_url = var.TF_VAR_base_url
    client_id = var.TF_VAR_client_id
    scopes = var.TF_VAR_scopes
    private_key = "${path.module}/rsa.pem"
}

