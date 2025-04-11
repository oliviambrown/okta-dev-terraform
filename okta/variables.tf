variable "terraform-warning" {
    description = "Warn"
    type = string
    default = "Managed by Terraform"
}

variable "base_url" {
    description = "The okta URL, can only be okta.com or oktapreview.com"
    type = string
    default = "okta.com"
  
}

variable "org_name" {
    description = "The Okta org"
    type = string
    default = "dev-83329188"
  
}

variable "client_id" {
    description = "For OIDC authentication"
    type = string
    default = "0oacz8fwixTCg8xlf5d7"
  
}

variable "scopes" {
    description = "Authorizing which scopes terraform can call the Okta API"
    type = list(string)
    default = ["okta.groups.manage", "okta.users.manage", "okta.policies.manage", "okta.apps.manage", "okta.roles.manage", "okta.schemas.manage", "okta.authenticators.manage"]
  
}

variable "password_match" {
    description = "Ensures the AD and Okta pass policies match"
    type = string
    default = "placeholder"
  
}