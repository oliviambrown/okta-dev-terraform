variable "org_name" {}
variable "TF_VAR_API_TOKEN" {}
variable "base_url" {}

#Terraform Cloud API
#variable "api_token" {}

# Enable and configure the Okta provider
terraform {
   /*cloud {
      organization = "olivia-org"
      workspaces {
        name = "okta-dev-terraform"
      }
    }*/

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
    api_token = var.TF_VAR_API_TOKEN
    
    #Terraform Cloud API 
    #api_token = var.api_token
}

