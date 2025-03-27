resource "okta_group" "passless_group" {
    name = "passwordless-group"
    description = "${var.terraform-warning} Setting up for passwordless"
  
}

resource "okta_policy_signon" "passless_auth" {
    name = "Sign On Policy"
    description = "${var.terraform-warning}"
  
}